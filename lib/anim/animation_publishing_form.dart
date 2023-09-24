import 'package:flutter/material.dart';

class AnimationPublishingForm {
  AnimationController controller;
  Animation<double> contributorOpacity;
  Animation<double> roleOpacity;
  Animation<double> shareOpacity;
  Animation<double> publishingOpacity;
  AnimationPublishingForm({
    required this.controller,
  })  : contributorOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.100,
              0.200,
              curve: Curves.easeIn,
            ),
          ),
        ),
        roleOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.150,
              0.400,
              curve: Curves.easeIn,
            ),
          ),
        ),
        shareOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.350,
              0.600,
              curve: Curves.easeIn,
            ),
          ),
        ),
        publishingOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.550,
              1.000,
              curve: Curves.easeIn,
            ),
          ),
        );
}
