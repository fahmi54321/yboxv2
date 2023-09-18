import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/chat/pages/home_page.dart';
import 'package:yboxv2/chat/pages/login_page.dart';
import 'package:yboxv2/chat/pages/register_page.dart';
import 'package:yboxv2/chat/pages/splash_page.dart';
import 'package:yboxv2/chat/providers/auth_provider.dart';
import 'package:yboxv2/chat/services/navigation_services.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(onInitializationComplete: () {
        runApp(const MainApp());
      }),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: AuthenticationProvider(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: NavigatorServices.navigatorKey,
        initialRoute: '/login',
        routes: {
          '/login': (BuildContext context) => LoginPage(),
          '/home': (BuildContext context) => HomePage(),
          '/register': (BuildContext context) => RegisterPage(),
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:yboxv2/pages/onboarding/onboarding_page.dart';
// import 'package:yboxv2/resource/color_schemes.g.dart';
// import 'package:yboxv2/router/router.dart' as router;

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: OnboardingPage.route,
//       onGenerateRoute: router.generateRoute,
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: yboxLightColorScheme,
//         useMaterial3: true,
//       ),
//       home: OnboardingPage(),
//     );
//   }
// }


