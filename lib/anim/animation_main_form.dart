import 'package:flutter/material.dart';

class AnimationMainForm {
  AnimationController controller;
  Animation<double> coverOpacity;
  Animation<double> languageOpacity;
  Animation<double> titleOpacity;
  Animation<double> artistOpacity;
  Animation<double> infoOpacity;
  AnimationMainForm({
    required this.controller,
  })  : coverOpacity = Tween(begin: 0.0, end: 1.0).animate(
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
        titleOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.350,
              0.600,
              curve: Curves.easeIn,
            ),
          ),
        ),
        artistOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.550,
              0.800,
              curve: Curves.easeIn,
            ),
          ),
        ),
        infoOpacity = Tween(begin: 0.0, end: 1.0).animate(
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
