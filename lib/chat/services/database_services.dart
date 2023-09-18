import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/chat/models/chat_messages.dart';

const String userCollection = 'Users';
const String chatCollection = 'Chats';
const String messageCollection = 'messages';

class DatabaseServices {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  DatabaseServices();

  Future<void> createUser(
    String uid,
    String email,
    String name,
    String imageUrl,
  ) async {
    try {
      await _db.collection(userCollection).doc(uid).set({
        'email': email,
        'image': imageUrl,
        'last_active': DateTime.now().toUtc(),
        'name': name,
      });
    } catch (e) {
      debugPrint('$e');
    }
  }

  Future<DocumentSnapshot> getUser(String uid) {
    return _db.collection(userCollection).doc(uid).get();
  }

  Future<void> updateUserLastSeenTime(String uid) async {
    try {
      await _db.collection(userCollection).doc(uid).update(
        {
          'last_active': DateTime.now().toUtc(),
        },
      );
    } catch (e) {
      log(e.toString());
    }
  }

  //todo 2
  Future<void> deleteChat(String chatId) async {
    try {
      await _db.collection(chatCollection).doc(chatId).delete();
    } catch (e) {
      debugPrint('$e');
    }
  }

  //todo 3
  Future<void> addMessageToChat(String chatId, ChatMessage message) async {
    try {
      await _db
          .collection(chatCollection)
          .doc(chatId)
          .collection(messageCollection)
          .add(
            message.toJson(),
          );
    } catch (e) {
      debugPrint('$e');
    }
  }

  // todo 4 (next chat_page_provider.dart)
  Future<void> updateChatData(String chatId, Map<String, dynamic> data) async {
    try {
      await _db.collection(chatCollection).doc(chatId).update(data);
    } catch (e) {
      debugPrint('$e');
    }
  }

  Stream<QuerySnapshot> getChatsForUser(String uid) {
    return _db
        .collection(chatCollection)
        .where('members', arrayContains: uid)
        .snapshots();
  }

  //todo 1
  Stream<QuerySnapshot> streamMessageForChat(String chatId) {
    return _db
        .collection(chatCollection)
        .doc(chatId)
        .collection(messageCollection)
        .orderBy('sent_time', descending: false)
        .snapshots();
  }

  Future<QuerySnapshot> getLastMessageForChat(String chatId) {
    return _db
        .collection(chatCollection)
        .doc(chatId)
        .collection(messageCollection)
        .orderBy('sent_time', descending: true)
        .limit(1)
        .get();
  }
}
