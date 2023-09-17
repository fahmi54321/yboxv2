// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class ItemInformasiLain extends StatelessWidget {
  final String label;
  final Function()? onTap;
  const ItemInformasiLain({
    Key? key,
    required this.label,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: vText(
            label,
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: black3,
            maxLines: 1,
          ),
        ),
        IconButton(
          onPressed: onTap,
          icon: const Icon(
            Icons.keyboard_arrow_right_outlined,
            color: primaryColor,
            size: 30.0,
          ),
        ),
      ],
    );
  }
}
