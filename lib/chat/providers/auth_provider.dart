import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:yboxv2/chat/models/chat_user.dart';

import '../services/database_services.dart';
import '../services/navigation_services.dart';

class AuthenticationProvider extends ChangeNotifier {
  late FirebaseAuth _auth;
  late NavigatorServices _navigatorServices;
  late DatabaseServices _databaseServices;

  ChatUser? chatUser;

  AuthenticationProvider() {
    _auth = FirebaseAuth.instance;
    _navigatorServices = GetIt.instance.get<NavigatorServices>();
    _databaseServices = GetIt.instance.get<DatabaseServices>();

    _auth.authStateChanges().listen((user) {
      if (user != null) {
        debugPrint('logged in');
        debugPrint('auth id ${_auth.currentUser?.uid}');

        _databaseServices.updateUserLastSeenTime(user.uid);
        _databaseServices.getUser(user.uid).then((snapshot) {
          if (snapshot.data() != null) {
            Map<String, dynamic> userData =
                snapshot.data() as Map<String, dynamic>;
            chatUser = ChatUser.fromJSON({
              'uid': user.uid,
              'name': userData['name'],
              'email': userData['email'],
              'last_active': userData['last_active'],
              'leader': userData['leader'],
              'is_anggota': userData['is_anggota'],
            });

            debugPrint('$chatUser');
          }
        });
      } else {
        debugPrint('Not Authenticated');
      }
    });
  }

  Future<void> loginUsingEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      debugPrint('${_auth.currentUser}');
      _navigatorServices.navigateToRoute('/home');
    } on FirebaseAuthException {
      debugPrint('error logging user into firebase');
    } catch (e) {
      debugPrint('$e');
    }
  }

  //todo 4 (next register_page)
  Future<String?> registerUserUsingEmailAndPassword(
    String email,
    String password,
  ) async {
    debugPrint('$email $password');

    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user?.uid ?? '';
    } on FirebaseAuthException catch (e) {
      debugPrint('$e');
      debugPrint('error registering user');
      return null;
    } catch (e) {
      debugPrint('$e');
      return null;
    }
  }

  Future<void> logout() async {
    try {
      _auth.signOut();
    } catch (e) {
      debugPrint('$e');
    }
  }
}
