import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:yboxv2/pages/home/home_page.dart';
import 'package:yboxv2/pages/onboarding/onboarding_page.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/shared_pref.dart';

class LoadingPage extends StatefulWidget {
  static const route = "Loading_page";
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    cekLogin();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: primaryColor,
        ),
      ),
    );
  }

  cekLogin() async {
    log('cek login');
    var data = await SharedPreferencesUtils.getUserPreference();

    log('dataa : $data');
    if (data == null) {
      log('data null');
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        Navigator.pushReplacementNamed(
          context,
          OnboardingPage.route,
        );
      });
    } else {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        Navigator.pushReplacementNamed(context, HomePage.route,
            arguments: ArgsHomePage(loginRes: data));
      });
    }
  }
}
