import 'package:flutter/material.dart';

class AnimationLogin {
  AnimationController controller;
  Animation<double> appBarOpacity;
  Animation<double> emailOpacity;
  Animation<double> kataSandiOpacity;
  Animation<double> buttonOpacity;
  Animation<double> ketOpacity;
  AnimationLogin({
    required this.controller,
  })  : appBarOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.200,
              0.400,
              curve: Curves.easeIn,
            ),
          ),
        ),
        emailOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.350,
              0.600,
              curve: Curves.easeIn,
            ),
          ),
        ),
        kataSandiOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.550,
              0.800,
              curve: Curves.easeIn,
            ),
          ),
        ),
        buttonOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.750,
              0.900,
              curve: Curves.easeIn,
            ),
          ),
        ),
        ketOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.800,
              1.000,
              curve: Curves.easeIn,
            ),
          ),
        );
}
