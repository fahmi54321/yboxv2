// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class GrafikFilter extends StatelessWidget {
  final String label;
  final Function()? onTap;
  const GrafikFilter({
    Key? key,
    required this.label,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: primaryColor.withOpacity(0.50),
      borderRadius: BorderRadius.circular(10.0),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: grey6,
          ),
          child: Row(
            children: [
              Expanded(
                child: vText(
                  label,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: grey5,
                  maxLines: 1,
                ),
              ),
              const Icon(
                Icons.arrow_drop_down_sharp,
                color: grey5,
                size: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
