import 'package:flutter/material.dart';

class AnimationHome {
  AnimationController controller;
  Animation<double> appBarOpacity;
  Animation<double> kategoriOpacity;
  Animation<double> gridCol1Opacity;
  Animation<double> gridCol2Opacity;
  Animation<double> gridCol3Opacity;
  Animation<double> grafikOpacity;
  AnimationHome({
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
        kategoriOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.200,
              0.400,
              curve: Curves.easeIn,
            ),
          ),
        ),
        gridCol1Opacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.350,
              0.550,
              curve: Curves.easeIn,
            ),
          ),
        ),
        gridCol2Opacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.500,
              0.700,
              curve: Curves.easeIn,
            ),
          ),
        ),
        gridCol3Opacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.650,
              0.850,
              curve: Curves.easeIn,
            ),
          ),
        ),
        grafikOpacity = Tween(begin: 0.0, end: 1.0).animate(
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
