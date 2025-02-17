import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_chat_demo/constants/constants.dart';

class MessageChat {
  final String idFrom;
  final String idTo;
  final String timestamp;
  final String content;
  final int type;
  final bool isRead;

  const MessageChat(
      {required this.idFrom,
      required this.idTo,
      required this.timestamp,
      required this.content,
      required this.type,
      required this.isRead});

  Map<String, dynamic> toJson() {
    return {
      FirestoreConstants.idFrom: this.idFrom,
      FirestoreConstants.idTo: this.idTo,
      FirestoreConstants.timestamp: this.timestamp,
      FirestoreConstants.content: this.content,
      FirestoreConstants.type: this.type,
      FirestoreConstants.isread: this.isRead,
    };
  }

  factory MessageChat.fromDocument(DocumentSnapshot doc) {
    String idFrom = doc.get(FirestoreConstants.idFrom);
    String idTo = doc.get(FirestoreConstants.idTo);
    String timestamp = doc.get(FirestoreConstants.timestamp);
    String content = doc.get(FirestoreConstants.content);
    int type = doc.get(FirestoreConstants.type);
    bool isRead = doc.get(FirestoreConstants.isread);
    return MessageChat(
        idFrom: idFrom,
        idTo: idTo,
        timestamp: timestamp,
        content: content,
        type: type,
        isRead: isRead);
  }
}
