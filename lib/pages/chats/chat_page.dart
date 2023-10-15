// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yboxv2/chat/models/chat.dart';
import 'package:yboxv2/chat/models/chat_messages.dart';
import 'package:yboxv2/chat/models/chat_user.dart';
import 'package:yboxv2/chat/providers/auth_provider.dart';
import 'package:yboxv2/chat/providers/chat_page_provider.dart';
import 'package:yboxv2/chat/widgets/custom_input_fields.dart';
import 'package:yboxv2/chat/widgets/custom_list_view_tiles.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/models/user_member_res.dart';
import 'package:yboxv2/pages/widget/data_belum_ada.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class ArgsChatPage {
  final Chat chat;
  final bool isLeader;
  final LoginRes? loginRes;
  final UserMemberRes? dataMember;
  ArgsChatPage({
    required this.chat,
    required this.isLeader,
    required this.loginRes,
    this.dataMember,
  });
}

class ChatPage extends StatefulWidget {
  static const route = 'chat-page';
  final ArgsChatPage args;

  const ChatPage({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late double _deviceHeight;
  late double _deviceWidth;
  late AuthenticationProvider _auth;
  late GlobalKey<FormState> _messageFormState;
  late ScrollController _messageListViewController;

  @override
  void initState() {
    super.initState();
    _messageFormState = GlobalKey<FormState>();
    _messageListViewController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    _auth = Provider.of<AuthenticationProvider>(context);

    return ChangeNotifierProvider(
      create: (_) => ChatPageProvider(
        auth: _auth,
        messageListViewController: _messageListViewController,
        chatDestinationUuid: widget.args.isLeader
            ? widget.args.chat.uid
            : widget.args.chat.currentUserUid,
      ),
      child:
          Consumer(builder: (BuildContext context, ChatPageProvider state, _) {
        return Scaffold(
          appBar: AppBar(
            foregroundColor: primaryColor,
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            elevation: 5,
            title: vText(
              'Chat',
              fontWeight: FontWeight.w700,
              color: primaryColor,
              fontSize: 20.0,
            ),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: _deviceWidth * 0.03,
              vertical: _deviceHeight * 0.02,
            ),
            height: _deviceHeight,
            width: _deviceWidth * 0.97,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                messagesListView(state),
                sendMessageForm(state),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget messagesListView(ChatPageProvider state) {
    if (state.messages.isNotEmpty) {
      return Expanded(
        child: ListView.builder(
          controller: _messageListViewController,
          itemCount: state.messages.length,
          itemBuilder: (context, index) {
            ChatMessage message = state.messages[index];
            bool isOwnMessage =
                message.senderID == widget.args.loginRes?.uuidMsg;
            debugPrint('isOwnMessage : $isOwnMessage');
            debugPrint('my uuid : ${widget.args.loginRes?.uuidMsg}');
            return CustomChatListViewTile(
              width: _deviceWidth * 0.80,
              deviceHeight: _deviceHeight,
              isOwnMessage: isOwnMessage,
              message: message,
              sender: ChatUser(
                uid: 'uuid',
                name: 'fahmi',
                email: 'fahmi@gmail.com',
                leader: 'leader',
                lastActive: DateTime.now(),
                isAnggota: '0',
              ),
            );
          },
        ),
      );
    } else {
      return const DataBelumAda(
        deskripsi: 'Pesan belum ada',
      );
    }
  }

  Widget sendMessageForm(ChatPageProvider state) {
    return Container(
      height: _deviceHeight * 0.08,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Colors.black.withOpacity(0.23),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(
        horizontal: _deviceWidth * 0.04,
        vertical: _deviceHeight * 0.03,
      ),
      child: Form(
        key: _messageFormState,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            messageTextField(state),
            sendMessageButton(state),
          ],
        ),
      ),
    );
  }

  Widget messageTextField(ChatPageProvider state) {
    return SizedBox(
      width: _deviceWidth * 0.65,
      child: CustomTextFormField(
        onSaved: (value) {
          state.message = value;
        },
        regEx: r"^(?!\s*$).+",
        hintText: 'Type a message',
        obscureText: false,
      ),
    );
  }

  Widget sendMessageButton(ChatPageProvider state) {
    double size = _deviceHeight * 0.04;
    return InkWell(
      onTap: () {
        if (_messageFormState.currentState?.validate() ?? false) {
          _messageFormState.currentState?.save();
          state.sendTextMessage(
            senderId: widget.args.loginRes?.uuidMsg ?? '',
            nameSender: widget.args.loginRes?.namaLengkap ?? '',
            tokenRecervier: widget.args.isLeader
                ? widget.args.dataMember?.tokenMsgNotif ?? ''
                : widget.args.loginRes?.tokenMssgNotifLeader ?? '',
          );
          _messageFormState.currentState?.reset();
        }
      },
      child: Image.asset(
        'assets/image/img_send.png',
        width: size,
        height: size,
      ),
    );
  }
}
