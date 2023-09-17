import 'package:flutter/material.dart';
import 'package:yboxv2/resource/CPColors.dart';

const yboxLightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: primaryColor,
  onPrimary: Color(0xFFFFFFFF),
  secondary: secondaryColor,
  onSecondary: Color(0xFFFFFFFF),
  error: errorColor,
  onError: errorColor,
  background: Color(0xFFFFFFFF),
  onBackground: Color(0xFFFFFFFF),
  surface: primaryColor,
  onSurface: primaryColor,
  outline: primaryColor,
);

const yboxDarkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: primaryColor,
  onPrimary: Color(0xFFFFFFFF),
  secondary: Color(0xFFB2CCC2),
  onSecondary: Color(0xFF1D352D),
  error: errorColor,
  onError: errorColor,
  background: Color(0xFFFFFFFF),
  onBackground: Color(0xFFFFFFFF),
  surface: primaryColor,
  onSurface: primaryColor,
  outline: primaryColor,
);
