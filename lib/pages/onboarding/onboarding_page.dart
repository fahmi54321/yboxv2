import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/pages/started/started_page.dart';
import 'package:yboxv2/pages/onboarding/onboarding_state.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class OnboardingPage extends StatelessWidget {
  static const route = 'onboarding-page';
  final Color kDarkBlueColor = const Color(0xFF053149);

  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OnboardingState(context: context),
      child: Consumer(
        builder: (BuildContext context, OnboardingState state, _) {
          return OnBoardingSlider(
            finishButtonText: 'Register',
            onFinish: () {},
            finishButtonStyle: FinishButtonStyle(
              backgroundColor: kDarkBlueColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0),
                side: BorderSide(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
            skipTextButton: vText(
              'Skip',
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            trailing: vText(
              'Login',
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            trailingFunction: () {
              Navigator.pushNamed(context, StartedPage.route);
            },
            controllerColor: kDarkBlueColor,
            totalPage: state.totalPage,
            headerBackgroundColor: yellow1,
            pageBackgroundColor: yellow1,
            background: state.listBackground,
            speed: 1.8,
            pageBodies: state.listPageBody,
          );
        },
      ),
    );
  }
}
