import 'package:flutter/material.dart';
import 'package:yboxv2/pages/onboarding/onboarding_page.dart';
import 'package:yboxv2/resource/color_schemes.g.dart';
import 'package:yboxv2/router/router.dart' as router;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: OnboardingPage.route,
      onGenerateRoute: router.generateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: yboxLightColorScheme,
        useMaterial3: true,
      ),
      home: OnboardingPage(),
    );
  }
}
