import 'package:flutter/material.dart';

class AnimationAkunBank {
  AnimationController controller;
  Animation<double> bankNameOpacity;
  Animation<double> nomorBankOpacity;
  Animation<double> namaRekOpacity;
  Animation<double> namaAkunOpacity;
  Animation<double> buttonOpacity;
  AnimationAkunBank({
    required this.controller,
  })  : bankNameOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.100,
              0.300,
              curve: Curves.easeIn,
            ),
          ),
        ),
        nomorBankOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.250,
              0.500,
              curve: Curves.easeIn,
            ),
          ),
        ),
        namaRekOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.450,
              0.700,
              curve: Curves.easeIn,
            ),
          ),
        ),
        namaAkunOpacity = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.650,
              0.900,
              curve: Curves.easeIn,
            ),
          ),
        ),
        buttonOpacity = Tween(begin: 0.0, end: 1.0).animate(
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
