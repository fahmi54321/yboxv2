// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:yboxv2/chat/models/chat_messages.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class TextMessageBubble extends StatelessWidget {
  final bool isOwnMessage;
  final ChatMessage message;
  final double height;
  const TextMessageBubble({
    Key? key,
    required this.isOwnMessage,
    required this.message,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> colorScheme = isOwnMessage
        ? [
            primaryColor,
            primaryColor,
          ]
        : [
            grey12,
            grey12,
          ];
    return Container(
      padding: EdgeInsets.only(
        left: isOwnMessage ? 25.0 : 15.0,
        right: isOwnMessage ? 15.0 : 25.0,
        top: 15.0,
        bottom: 15.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(isOwnMessage ? 0.0 : 25.0),
          bottomRight: const Radius.circular(25.0),
          topLeft: const Radius.circular(25.0),
          bottomLeft: Radius.circular(isOwnMessage ? 25.0 : 0.0),
        ),
        gradient: LinearGradient(
          colors: colorScheme,
          stops: const [0.30, 0.70],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment:
            isOwnMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          vText(
            message.content,
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            color:
                isOwnMessage ? Theme.of(context).colorScheme.onPrimary : grey13,
          ),
          const SizedBox(height: 4.0),
          vText(
            timeago.format(message.sentTime),
            fontSize: 8.0,
            fontWeight: FontWeight.w400,
            color:
                isOwnMessage ? Theme.of(context).colorScheme.onPrimary : grey13,
          ),
        ],
      ),
    );
  }
}
