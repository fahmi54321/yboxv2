import 'package:flutter/material.dart';

class AnimationDetailsAudio {
  AnimationController controller;
  Animation<double> appBarOpacity;
  Animation<double> gambarOpacity;
  Animation<double> releaseOpacity;
  Animation<double> upcOpacity;
  Animation<double> addedOnOpacity;
  Animation<double> iconUserOpacity;
  Animation<double> infoOpacity;
  AnimationDetailsAudio({
    required this.controller,
  })  : appBarOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.100,
              0.250,
              curve: Curves.easeIn,
            ),
          ),
        ),
        gambarOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.200,
              0.400,
              curve: Curves.easeIn,
            ),
          ),
        ),
        releaseOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.350,
              0.550,
              curve: Curves.easeIn,
            ),
          ),
        ),
        upcOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.500,
              0.700,
              curve: Curves.easeIn,
            ),
          ),
        ),
        addedOnOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.650,
              0.850,
              curve: Curves.easeIn,
            ),
          ),
        ),
        iconUserOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.800,
              0.900,
              curve: Curves.easeIn,
            ),
          ),
        ),
        infoOpacity = Tween(begin: 0.0, end: 1.0).animate(
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
