import 'package:yboxv2/chat/models/chat_messages.dart';
import 'package:yboxv2/chat/models/chat_user.dart';

class Chat {
  final String uid;
  final String currentUserUid;
  final bool activity;
  final bool group;
  final List<ChatUser> members;
  List<ChatMessage> messages;

  late final List<ChatUser> _recepients;

  Chat({
    required this.uid,
    required this.currentUserUid,
    required this.messages,
    required this.members,
    required this.group,
    required this.activity,
  }) {
    _recepients =
        members.where((member) => member.uid != currentUserUid).toList();
  }

  List<ChatUser> recepients() {
    return _recepients;
  }

  String title() {
    return !group
        ? _recepients.first.name
        : _recepients.map((user) => user.name).join(", ");
  }
}
