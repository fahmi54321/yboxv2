import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yboxv2/resource/CPColors.dart';

Widget vText(
  String title, {
  Color color = Colors.black,
  double? fontSize,
  FontWeight? fontWeight,
  TextOverflow overflow = TextOverflow.ellipsis,
  TextAlign align = TextAlign.left,
  bool money = false,
  bool number = false,
  bool poppins = true,
  decoration,
  int maxLines = 2,
  letterSpacing,
  FontStyle? fontStyle,
}) {
  return Text(
    title,
    style: GoogleFonts.poppins(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      decoration: decoration,
      fontStyle: fontStyle ?? FontStyle.normal,
      letterSpacing: letterSpacing,
    ),
    overflow: overflow,
    textAlign: align,
    maxLines: maxLines,
  );
}

class VInputText extends StatelessWidget {
  final TextInputType? keyboardType;
  final String hint;
  final TextEditingController? controller;
  final TextCapitalization capitalization;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final Function()? onTap;
  final Function(String)? onFieldSubmitted;
  final double? width;
  final double? height;
  final double contentPadding;
  final Function(String)? onChange;
  final String? initialValue;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool enabled;
  final bool readOnly;
  final int? maxLines;
  final int? minLines;
  final double? fontSize;
  final double? hintFontSize;
  final int? maxLength;
  final bool obscureText;
  final Color? fillColor;
  final Color? activeColor;
  final Color? outlineColor;
  final Color? textColor;
  final Color? hintTextColor;
  final double? radius;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;

  const VInputText(this.hint,
      {super.key,
      this.keyboardType,
      this.width,
      this.height,
      this.contentPadding = 10,
      this.readOnly = false,
      this.controller,
      this.validator,
      this.onSaved,
      this.onFieldSubmitted,
      this.initialValue,
      this.enabled = true,
      this.onChange,
      this.onTap,
      this.suffixIcon,
      this.prefixIcon,
      this.maxLines,
      this.fontSize,
      this.hintFontSize,
      this.minLines,
      this.maxLength,
      this.capitalization = TextCapitalization.none,
      this.obscureText = false,
      this.fillColor = Colors.white,
      this.textColor = black1,
      this.hintTextColor = grey4,
      this.activeColor = black1,
      this.outlineColor = black1,
      this.radius,
      this.textInputAction,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        enabled: enabled,
        initialValue: initialValue,
        controller: controller,
        obscureText: obscureText,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: activeColor ?? Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(radius ?? 8.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: outlineColor ?? Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(radius ?? 8.0),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: outlineColor ?? Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(radius ?? 8.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: outlineColor ?? Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(radius ?? 8.0),
          ),
          hintText: hint,
          contentPadding: EdgeInsets.all(contentPadding),
          hintStyle: GoogleFonts.poppins(
            fontSize: hintFontSize,
            color: hintTextColor,
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
        keyboardType: keyboardType ?? TextInputType.text,
        style: GoogleFonts.poppins(
          fontSize: fontSize,
          color: textColor,
        ),
        textCapitalization: capitalization,
        validator: validator,
        onSaved: onSaved,
        onChanged: onChange,
        maxLines: maxLines,
        minLines: minLines,
        readOnly: readOnly,
        maxLength: maxLength,
        onFieldSubmitted: onFieldSubmitted,
        onTap: onTap,
        textAlign: textAlign ?? TextAlign.start,
      ),
    );
  }
}
