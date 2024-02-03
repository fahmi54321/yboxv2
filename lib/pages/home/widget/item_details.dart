// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class ItemDetails extends StatelessWidget {
  final String leftLabel;
  final String? rightLabel;
  final Widget? rightWidget;
  final Color? fontColorRightLabel;
  final bool isUrlLauncher;
  const ItemDetails({
    Key? key,
    required this.leftLabel,
    this.rightLabel,
    this.rightWidget,
    this.fontColorRightLabel,
    this.isUrlLauncher = false,
  }) : super(key: key);

  Widget viewRightWidget({
    required String? rightLabel,
    required Widget? rightWidget,
    bool isUrlLauncher = false,
  }) {
    if (rightLabel != null) {
      if (isUrlLauncher) {
        return TextButton(
          onPressed: () async {
            if (!await launchUrl(Uri.parse(rightLabel))) {
              throw Exception('Could not launch $rightLabel');
            }
          },
          child: vText(
            rightLabel,
            color: primaryColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            maxLines: 1,
            decoration: TextDecoration.underline,
          ),
        );
      }
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
          isUrlLauncher: isUrlLauncher,
        ),
      ],
    );
  }
}
