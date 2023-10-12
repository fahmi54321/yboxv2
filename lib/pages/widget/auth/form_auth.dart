import 'package:flutter/material.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class FormAuth extends StatefulWidget {
  final String label;
  final String hint;
  final String? deskripsi;
  final bool isFormPassword;
  final TextEditingController? controller;
  const FormAuth({
    Key? key,
    required this.label,
    required this.hint,
    this.controller,
    this.deskripsi,
    this.isFormPassword = false,
  }) : super(key: key);

  @override
  State<FormAuth> createState() => _FormAuthState();
}

class _FormAuthState extends State<FormAuth> {
  bool obscureText = true;

  void changeObsureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          widget.label,
          fontSize: 12.0,
          fontWeight: FontWeight.w600,
          color: grey3,
        ),
        const SizedBox(height: 5.0),
        VInputText(
          widget.hint,
          radius: 5,
          hintFontSize: 12.0,
          fontSize: 12.0,
          fillColor: Theme.of(context).colorScheme.onPrimary,
          activeColor: primaryColor,
          outlineColor: primaryColor,
          textColor: black4,
          obscureText: widget.isFormPassword ? obscureText : false,
          maxLines: 1,
          controller: widget.controller,
          suffixIcon: widget.isFormPassword
              ? InkWell(
                  onTap: () {
                    changeObsureText();
                  },
                  child: Icon(
                    obscureText
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                )
              : null,
        ),
        Visibility(
          visible: widget.deskripsi != null,
          child: Container(
            margin: const EdgeInsets.only(top: 2.0),
            child: vText(
              widget.deskripsi ?? '',
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: grey3,
            ),
          ),
        ),
      ],
    );
  }
}
