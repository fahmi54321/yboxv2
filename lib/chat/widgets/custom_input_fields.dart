import 'package:flutter/material.dart';
import 'package:yboxv2/resource/CPColors.dart';

class CustomTextFormField extends StatelessWidget {
  final Function(String) onSaved;
  final String regEx;
  final String hintText;
  final bool obscureText;

  const CustomTextFormField({
    Key? key,
    required this.onSaved,
    required this.regEx,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (value) => onSaved(value ?? ''),
      cursorColor: primaryColor,
      style: const TextStyle(color: Colors.black),
      obscureText: obscureText,
      validator: (value) {
        return RegExp(regEx).hasMatch(value ?? '')
            ? null
            : 'Enter a valid value.';
      },
      decoration: InputDecoration(
        fillColor: Theme.of(context).colorScheme.onPrimary,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: grey14),
      ),
    );
  }
}
