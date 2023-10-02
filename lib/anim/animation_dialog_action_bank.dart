import 'package:flutter/material.dart';

class AnimationDialogActionBank {
  AnimationController controller;
  Animation<double> titleOpacity;
  Animation<double> tidakOpacity;
  Animation<double> yaOpacity;
  AnimationDialogActionBank({
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
        tidakOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.350,
              0.700,
              curve: Curves.easeIn,
            ),
          ),
        ),
        yaOpacity = Tween(begin: 0.0, end: 1.0).animate(
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
