// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get_it/get_it.dart';
import 'package:yboxv2/chat/models/chat_messages.dart';
import 'package:yboxv2/chat/providers/auth_provider.dart';
import 'package:yboxv2/chat/services/database_services.dart';
import 'package:yboxv2/chat/services/navigation_services.dart';
import 'package:yboxv2/network/http_notif.dart';

class ChatPageProvider extends ChangeNotifier {
  //todo 5
  late DatabaseServices _db;
  late NavigatorServices _navigation;

  AuthenticationProvider auth;
  ScrollController messageListViewController;

  String chatDestinationUuid;
  List<ChatMessage> messages = [];
  String _message = '';
  String get message => _message;
  set message(String value) => _message = value;
  late StreamSubscription _messagesStream;
  late StreamSubscription _keyboardVisibilityStream;
  late KeyboardVisibilityController _keyboardVisibilityController;

  ChatPageProvider({
    required this.auth,
    required this.messageListViewController,
    required this.chatDestinationUuid,
  }) {
    //todo 6
    _db = GetIt.instance.get<DatabaseServices>();
    _navigation = GetIt.instance.get<NavigatorServices>();
    _keyboardVisibilityController = KeyboardVisibilityController();

    listenToMessages();
    listenToKeyboardChanges();
  }

  @override
  void dispose() {
    _messagesStream.cancel();
    super.dispose();
  }

  void goBack() {
    _navigation.goBack();
  }

  //todo 7
  void listenToMessages() {
    try {
      _messagesStream = _db.streamMessageForChat(chatDestinationUuid).listen(
        (snapshot) {
          List<ChatMessage> msgs = snapshot.docs.map(
            (msg) {
              Map<String, dynamic> messageData =
                  msg.data() as Map<String, dynamic>;
              return ChatMessage.fromJSON(messageData);
            },
          ).toList();

          messages = msgs;
          notifyListeners();

          // auto scroll to last message
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (messageListViewController.hasClients) {
              messageListViewController.jumpTo(
                messageListViewController.position.maxScrollExtent,
              );
            }
          });
        },
      );
    } catch (e) {
      print(e);
    }
  }

  void listenToKeyboardChanges() {
    _keyboardVisibilityStream =
        _keyboardVisibilityController.onChange.listen((event) {
      _db.updateChatData(
        chatDestinationUuid,
        {
          'is_activity': event,
        },
      );
    });
  }

  //todo 8
  void deleteChat() {
    goBack();
    _db.deleteChat(chatDestinationUuid);
  }

  //todo 9
  void sendTextMessage({
    required String senderId,
    required String tokenRecervier,
    required String nameSender,
  }) async {
    if (message.isNotEmpty) {
      ChatMessage messageToSend = ChatMessage(
        senderID: senderId,
        type: MessageType.TEXT,
        content: message,
        sentTime: DateTime.now(),
      );
      await _db.addMessageToChat(chatDestinationUuid, messageToSend);
      await sendNotif(
        tokenRecervier: tokenRecervier,
        nameSender: nameSender,
        messageSender: messageToSend.content,
      );
    }
  }

  Future<void> sendNotif({
    required String tokenRecervier,
    required String nameSender,
    required String messageSender,
  }) async {
    try {
      Map<String, dynamic> paramsData = {
        "to": tokenRecervier,
        "notification": {
          "title": nameSender,
          "body": messageSender,
          "mutable_content": true,
          "sound": "Tri-tone"
        }
      };

      final resStep1 = await HTTPNotifService().sendNotif(
        paramsData: paramsData,
      );

      resStep1.fold(
        (e) async {
          debugPrint('error send notif $e');
        },
        (cat) async {
          debugPrint('sukses send notif $cat');
        },
      );
    } catch (e) {
      debugPrint('error send notif $e');
    }
  }
}
