import 'package:cloud_firestore/cloud_firestore.dart';

enum MessageType {
  TEXT,
  IMAGE,
  UNKNOWN,
}

class ChatMessage {
  final String senderID;
  final MessageType type;
  final String content;
  final DateTime sentTime;

  ChatMessage({
    required this.senderID,
    required this.type,
    required this.content,
    required this.sentTime,
  });

  factory ChatMessage.fromJSON(Map<String, dynamic> json) {
    MessageType type;
    switch (json['type']) {
      case 'text':
        {
          type = MessageType.TEXT;
        }
        break;

      default:
        {
          type = MessageType.UNKNOWN;
        }
    }

    return ChatMessage(
      senderID: json['sender_id'],
      type: type,
      content: json['content'],
      sentTime: json['sent_time'].toDate(),
    );
  }

  Map<String, dynamic> toJson() {
    String messageType;
    switch (type) {
      case MessageType.TEXT:
        {
          messageType = 'text';
        }
        break;

      default:
        {
          messageType = '';
        }
    }

    return {
      'content': content,
      'type': messageType,
      'sender_id': senderID,
      'sent_time': Timestamp.fromDate(sentTime),
    };
  }
}
