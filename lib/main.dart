import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/pages/loading_page.dart';
import 'package:yboxv2/pages/provider/data_album_video_audio.dart';
import 'package:yboxv2/pages/provider/data_track.dart';
import 'package:yboxv2/resource/color_schemes.g.dart';
import 'package:yboxv2/router/router.dart' as router;

void main() {
  runApp(const MyApp());
  configLoading();
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DataAlbumAudioVideo>(
          create: (_) => DataAlbumAudioVideo(),
        ),
        ChangeNotifierProvider<DataTrack>(
          create: (_) => DataTrack(),
        ),
      ],
      child: MaterialApp(
        initialRoute: LoadingPage.route,
        onGenerateRoute: router.generateRoute,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: yboxLightColorScheme,
          useMaterial3: true,
        ),
        home: const LoadingPage(),
        builder: EasyLoading.init(),
      ),
    );
  }
}
