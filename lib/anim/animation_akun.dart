import 'package:flutter/material.dart';

class AnimationAkun {
  AnimationController controller;
  Animation<double> profileOpacity;
  Animation<double> informasiLainOpacity;
  Animation<double> ringtoneOpacity;
  Animation<double> transaksiOpacity;
  Animation<double> bankOpacity;
  Animation<double> ubahKataSandiOpacity;
  Animation<double> versiOpacity;
  Animation<double> keluarOpacity;
  AnimationAkun({
    required this.controller,
  })  : profileOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.100,
              0.200,
              curve: Curves.easeIn,
            ),
          ),
        ),
        informasiLainOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.150,
              0.300,
              curve: Curves.easeIn,
            ),
          ),
        ),
        ringtoneOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.250,
              0.400,
              curve: Curves.easeIn,
            ),
          ),
        ),
        transaksiOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.350,
              0.500,
              curve: Curves.easeIn,
            ),
          ),
        ),
        bankOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.450,
              0.600,
              curve: Curves.easeIn,
            ),
          ),
        ),
        ubahKataSandiOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.550,
              0.700,
              curve: Curves.easeIn,
            ),
          ),
        ),
        versiOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.650,
              0.800,
              curve: Curves.easeIn,
            ),
          ),
        ),
        keluarOpacity = Tween(begin: 0.0, end: 1.0).animate(
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
