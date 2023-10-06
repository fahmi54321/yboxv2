import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Function(String) onSaved;
  final String regEx;
  final String hintText;
  final bool obscureText;

  CustomTextFormField({
    Key? key,
    required this.onSaved,
    required this.regEx,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (_value) => onSaved(_value ?? ''),
      cursorColor: Colors.red,
      style: const TextStyle(color: Colors.black),
      obscureText: obscureText,
      validator: (_value) {
        return RegExp(regEx).hasMatch(_value ?? '')
            ? null
            : 'Enter a valid value.';
      },
      decoration: InputDecoration(
        fillColor: Colors.grey,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black),
      ),
    );
  }
}
