import 'package:flutter/material.dart';

class AnimationRegister {
  AnimationController controller;
  Animation<double> appBarOpacity;
  Animation<double> stepperOpacity;
  Animation<double> namaOpacity;
  Animation<double> emailOpacity;
  Animation<double> kataSandiOpacity;
  Animation<double> buttonOpacity;
  Animation<double> ketOpacity;
  AnimationRegister({
    required this.controller,
  })  : appBarOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.100,
              0.150,
              curve: Curves.easeIn,
            ),
          ),
        ),
        stepperOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.140,
              0.300,
              curve: Curves.easeIn,
            ),
          ),
        ),
        namaOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.250,
              0.450,
              curve: Curves.easeIn,
            ),
          ),
        ),
        emailOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.400,
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
              0.750,
              curve: Curves.easeIn,
            ),
          ),
        ),
        buttonOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.700,
              0.900,
              curve: Curves.easeIn,
            ),
          ),
        ),
        ketOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.850,
              1.000,
              curve: Curves.easeIn,
            ),
          ),
        );
}
