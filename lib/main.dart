import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/pages/splash_page.dart';
import 'package:yboxv2/chat/providers/auth_provider.dart';
import 'package:yboxv2/chat/services/navigation_services.dart';
import 'package:yboxv2/pages/loading_page.dart';
import 'package:yboxv2/pages/provider/data_album_video_audio.dart';
import 'package:yboxv2/pages/provider/data_track.dart';
import 'package:yboxv2/resource/color_schemes.g.dart';
import 'package:yboxv2/router/router.dart' as router;
import 'package:intl/date_symbol_data_local.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  debugPrint("Handling a background message: ${message.messageId}");
}

const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'high_importance_channel', // id
  'High Importance Notifications', // title
  importance: Importance.high,
);

/// Initialize the [FlutterLocalNotificationsPlugin] package.
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() async {
  initializeDateFormatting('id_ID', null);

  configLoading();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  runApp(const CheckInitFirebase());
}

class CheckInitFirebase extends StatefulWidget {
  const CheckInitFirebase({super.key});

  @override
  _CheckInitFirebaseState createState() => _CheckInitFirebaseState();
}

class _CheckInitFirebaseState extends State<CheckInitFirebase>
    with WidgetsBindingObserver {
  bool _initialized = false;
  bool _error = false;

  void initializeFlutterFire() async {
    try {
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();

    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_error) {
      debugPrint('$_error');
    }

    if (!_initialized) {
      return const CircularProgressIndicator();
    }

    return const MyApp();
  }
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = const Color(0xFFFFFFFF)
    ..backgroundColor = const Color(0xFF000000).withOpacity(0.5)
    ..indicatorColor = const Color(0xFFFFFFFF)
    ..textColor = const Color(0xFFFFFFFF)
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashPage(
        onInitializationComplete: () {
          runApp(
            const MainApp(),
          );
        },
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DataAlbumAudioVideo>(
          create: (_) => DataAlbumAudioVideo(),
        ),
        ChangeNotifierProvider<DataTrack>(
          create: (_) => DataTrack(),
        ),
        ChangeNotifierProvider.value(
          value: AuthenticationProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: yboxLightColorScheme,
          useMaterial3: true,
        ),
        initialRoute: LoadingPage.route,
        navigatorKey: NavigatorServices.navigatorKey,
        onGenerateRoute: router.generateRoute,
        home: const LoadingPage(),
        builder: EasyLoading.init(),
      ),
    );
  }
}
