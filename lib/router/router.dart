import 'package:flutter/material.dart';
import 'package:yboxv2/pages/chats/chat_page.dart';
import 'package:yboxv2/pages/chats/chat_user_page.dart';
import 'package:yboxv2/pages/forms/form_album_audio_video_page.dart';
import 'package:yboxv2/pages/forms/form_track_page.dart';
import 'package:yboxv2/pages/home/details/details_album_page.dart';
import 'package:yboxv2/pages/home/details/details_audio_page.dart';
import 'package:yboxv2/pages/home/details/details_track_page.dart';
import 'package:yboxv2/pages/home/details/details_video_page.dart';
import 'package:yboxv2/pages/home/fragment/akun_bank_fragment.dart';
import 'package:yboxv2/pages/home/fragment/audio_fragment.dart';
import 'package:yboxv2/pages/home/fragment/transaction_fragment.dart';
import 'package:yboxv2/pages/home/home_page.dart';
import 'package:yboxv2/pages/loading_page.dart';
import 'package:yboxv2/pages/login/login_page.dart';
import 'package:yboxv2/pages/onboarding/onboarding_page.dart';
import 'package:yboxv2/pages/register/register_page.dart';
import 'package:yboxv2/pages/started/started_page.dart';
import 'package:yboxv2/pages/onboarding/onboarding_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case StartedPage.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const StartedPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );
    case DetailsAlbumPage.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            DetailsAlbumPage(
          args: settings.arguments as ArgsDetailsAlbum,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );
    case DetailsTrackPage.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            DetailsTrackPage(
          args: settings.arguments as ArgsDetailsTrack,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );

    case DetailsVideoPage.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            DetailsVideoPage(
          args: settings.arguments as ArgsDetailsVideo,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );

    case DetailsAudioPage.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            DetailsAudioPage(
          args: settings.arguments as ArgsDetailsAudio,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );

    case LoginPage.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const LoginPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );
    case RegisterPage.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const RegisterPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );

    case AudioFragment.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const AudioFragment(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );

    case TransactionFragment.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const TransactionFragment(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );

    case OnboardingPage.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const OnboardingPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );

    case HomePage.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => HomePage(
          args: settings.arguments as ArgsHomePage,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );

    case FormAlbumAudioVideoPage.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            FormAlbumAudioVideoPage(
          args: settings.arguments as ArgsFormAlbumAudioVideoPage,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );

    case LoadingPage.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const LoadingPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );

    case FormTrackPage.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => FormTrackPage(
          args: settings.arguments as ArgsFormTrackPage,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );

    case AkunBankFragment.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const AkunBankFragment(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );

    case ChatUserPage.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const ChatUserPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );

    case ChatPage.route:
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => ChatPage(
          args: settings.arguments as ArgsChatPage,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      );

    default:
      return MaterialPageRoute(builder: (context) => OnboardingPage());
  }
}
