// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class ItemDetails extends StatelessWidget {
  final String leftLabel;
  final String? rightLabel;
  final Widget? rightWidget;
  final Color? fontColorRightLabel;
  const ItemDetails({
    Key? key,
    required this.leftLabel,
    this.rightLabel,
    this.rightWidget,
    this.fontColorRightLabel,
  }) : super(key: key);

  Widget viewRightWidget({
    required String? rightLabel,
    required Widget? rightWidget,
  }) {
    if (rightLabel != null) {
      return vText(
        rightLabel,
        color: fontColorRightLabel ?? black2,
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        maxLines: 1,
      );
    } else if (rightWidget != null) {
      return rightWidget;
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        vText(
          leftLabel,
          color: black2,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          maxLines: 1,
        ),
        viewRightWidget(
          rightLabel: rightLabel,
          rightWidget: rightWidget,
        ),
      ],
    );
  }
}
