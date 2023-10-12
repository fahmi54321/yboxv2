import 'package:flutter/material.dart';

class AnimationDialogUbahPassword {
  AnimationController controller;
  Animation<double> titleOpacity;
  Animation<double> formOpacity;
  Animation<double> buttonOpacity;
  AnimationDialogUbahPassword({
    required this.controller,
  })  : titleOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.100,
              0.400,
              curve: Curves.easeIn,
            ),
          ),
        ),
        formOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.350,
              0.700,
              curve: Curves.easeIn,
            ),
          ),
        ),
        buttonOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.650,
              1.000,
              curve: Curves.easeIn,
            ),
          ),
        );
}
