import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/chat/models/chat.dart';
import 'package:yboxv2/chat/models/chat_messages.dart';
import 'package:yboxv2/chat/models/chat_user.dart';
import 'package:yboxv2/chat/pages/chat_page.dart';
import 'package:yboxv2/chat/providers/auth_provider.dart';
import 'package:yboxv2/chat/providers/chats_page_provider.dart';
import 'package:yboxv2/chat/services/navigation_services.dart';
import 'package:yboxv2/chat/widgets/custom_list_view_tiles.dart';
import 'package:yboxv2/chat/widgets/top_bar.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  late double _deviceHeight;
  late double _deviceWidth;
  late AuthenticationProvider _auth;
  late ChatsPageProvider _pageProvider;
  late NavigatorServices _navigator;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    _auth = Provider.of<AuthenticationProvider>(context);
    _navigator = GetIt.instance.get<NavigatorServices>();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChatsPageProvider>(
          create: (_) => ChatsPageProvider(auth: _auth),
        ),
      ],
      child: Builder(builder: (context) {
        _pageProvider = context.watch<ChatsPageProvider>();

        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: _deviceWidth * 0.03,
            vertical: _deviceWidth * 0.02,
          ),
          height: _deviceHeight * 0.98,
          width: _deviceWidth * 0.97,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TopBar(
                'Chats',
                primaryAction: IconButton(
                  onPressed: () {
                    _auth.logout();
                  },
                  icon: const Icon(Icons.logout),
                  color: const Color.fromRGBO(
                    0,
                    82,
                    218,
                    1.0,
                  ),
                ),
              ),
              _chatList(),
            ],
          ),
        );
      }),
    );
  }

  Widget _chatList() {
    List<Chat> chats = _pageProvider.chats;

    return Expanded(
      child: (() {
        if (chats.isNotEmpty) {
          if (chats.isNotEmpty) {
            return ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, index) {
                return _chatTiles(chats[index]);
              },
            );
          } else {
            return const Center(
              child: Text('No chats found'),
            );
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      })(),
      // child: _chatTiles(),
    );
  }

  //todo 8 (finish)
  Widget _chatTiles(Chat chat) {
    List<ChatUser> recepients = chat.recepients();
    bool isActive = recepients.any((element) => element.wasRecentlyActive());
    String subtitleText = '';
    print('activity : ${chat.activity}');
    if (chat.messages.isNotEmpty) {
      subtitleText = chat.messages.first.type != MessageType.TEXT
          ? 'Media Attachment'
          : chat.messages.first.content;
    }

    return CustomListViewTiles(
      height: _deviceHeight * 0.10,
      title: chat.title(),
      subtitle: subtitleText,
      isActivity: chat.activity,
      isActive: isActive,
      onTap: () {
        log('klik');
        _navigator.navigateToPage(
          Chatpage(chat: chat),
        );
      },
    );
  }
}
