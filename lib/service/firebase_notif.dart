import 'dart:convert';
import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Notif {
  BuildContext context;
  Notif({required this.context});
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  Future initNotif() async {
    debugPrint('masukkk init notif');
    initflutterLocalPushNotificationPlugin();
    initFirebaseMessagingPlugin();
    // getNotif();
  }

  Future initflutterLocalPushNotificationPlugin() async {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
    );
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: selectNotification,
    );
  }

  //jika push notif di tekan arahkan ke list detail
  Future selectNotification(NotificationResponse? notificationResponse) async {
    final String? payload = notificationResponse?.payload;
    if (payload != null) {
      debugPrint('select notification payload: $payload');
      Map<String, dynamic> data = json.decode(payload);

      log(data.toString());
      String status = data['status_type'];
      String id = data['proposal_id'];
      log("status = $status");
      log("id = $id");

      onSelectedNotif(context: context, id: id, status: status);
    }
  }

  Future onDidReceiveLocalNotification(
      int? id, String? title, String? body, String? payload) async {
    // display a dialog with the notification details, tap ok to go to another page
    showDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title!),
        content: Text(body!),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            child: const Text('Ok'),
            onPressed: () async {
              Navigator.of(context, rootNavigator: true).pop();
            },
          )
        ],
      ),
    );
  }

  Future initFirebaseMessagingPlugin() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'high_importance_channel', // id
      'High Importance Notifications',
      channelDescription: // title
          'This channel is used for important notifications.', // description
      importance: Importance.high,
    );
    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) {
      if (message != null) {
        debugPrint("message != null $message");
        // Get.off(HomePage());
      }
    });

    //onMessage kepanggil ketika aplikasi open /  foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      RemoteNotification? notification = message.notification;
      debugPrint('A new onMessage listen! ${message.data}');
      flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification!.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              androidPlatformChannelSpecifics.channelId,
              androidPlatformChannelSpecifics.channelName,
              channelDescription:
                  androidPlatformChannelSpecifics.channelDescription,
              // TODO add a proper drawable resource to android, for now using
              //      one that already exists in example app.
              // icon: 'launch_background',
            ),
          ),
          payload: json.encode(message.data));
    });

    //message.data adalah data  yang dikirim oleh message firebase
    //kepanggil saat aplikasi sedang di minimize lalu ada aplikasi terbuka ketika notifikasi tray nya diklik oleh user
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      debugPrint('Masuk A new onMessageOpenedApp');
      log("Notification payload!${message.data}");
      log(message.data.toString());

      String status = message.data['status_type'];
      String id = message.data['proposal_id'];

      log("status = $status");
      log("id = $id");
      onSelectedNotif(context: context, id: id, status: status);
    });
  }

  Future<void> onSelectedNotif({
    required String id,
    required String status,
    required BuildContext context,
  }) async {}
}
