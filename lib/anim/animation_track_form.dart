import 'package:flutter/material.dart';

class AnimationTrackForm {
  AnimationController controller;
  Animation<double> audioOpacity;
  Animation<double> languageOpacity;
  Animation<double> additionalOpacity;
  Animation<double> additionalOpsionalOpacity;
  Animation<double> lyricsOpacity;
  AnimationTrackForm({
    required this.controller,
  })  : audioOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.100,
              0.200,
              curve: Curves.easeIn,
            ),
          ),
        ),
        languageOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.150,
              0.400,
              curve: Curves.easeIn,
            ),
          ),
        ),
        additionalOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.350,
              0.600,
              curve: Curves.easeIn,
            ),
          ),
        ),
        additionalOpsionalOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.550,
              0.800,
              curve: Curves.easeIn,
            ),
          ),
        ),
        lyricsOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.750,
              1.000,
              curve: Curves.easeIn,
            ),
          ),
        );
}
