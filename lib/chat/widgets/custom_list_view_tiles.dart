// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:yboxv2/chat/models/chat_messages.dart';
import 'package:yboxv2/chat/models/chat_user.dart';
import 'package:yboxv2/chat/widgets/message_bubbles.dart';

class CustomListViewTiles extends StatelessWidget {
  final double height;
  final String title;
  final String subtitle;
  final bool isActive;
  final bool isActivity;
  final Function()? onTap;

  const CustomListViewTiles({
    Key? key,
    required this.height,
    required this.title,
    required this.subtitle,
    required this.isActive,
    required this.isActivity,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
      minVerticalPadding: height * 0.20,
      subtitle: isActivity == true
          ? Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpinKitThreeBounce(
                  color: Colors.black54,
                  size: height * 0.10,
                )
              ],
            )
          : Text(
              subtitle,
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
    );
  }
}

class CustomChatListViewTile extends StatelessWidget {
  final double width;
  final double deviceHeight;
  final bool isOwnMessage;
  final ChatMessage message;
  final ChatUser sender;
  const CustomChatListViewTile({
    Key? key,
    required this.width,
    required this.deviceHeight,
    required this.isOwnMessage,
    required this.message,
    required this.sender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10.0),
      width: width,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment:
            isOwnMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextMessageBubble(
            isOwnMessage: isOwnMessage,
            message: message,
            height: deviceHeight * 0.06,
          )
        ],
      ),
    );
  }
}
