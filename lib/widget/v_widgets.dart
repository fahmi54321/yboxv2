import 'package:flutter/material.dart';
import 'package:yboxv2/resource/CPColors.dart';

class VCustomBoxWidget extends StatelessWidget {
  final Widget widget;
  final Color color;
  final double radius;
  final Color fontColor;
  final double paddingHorizontal;
  final double paddingVertical;
  final VoidCallback? onTap;
  final double? fontSize;
  final Color? borderColor;

  const VCustomBoxWidget(
      {Key? key,
      required this.widget,
      required this.radius,
      required this.color,
      required this.fontColor,
      required this.paddingHorizontal,
      required this.paddingVertical,
      this.onTap,
      this.fontSize,
      this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            horizontal: paddingHorizontal, vertical: paddingVertical),
        decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: borderColor ?? borderText, // red as border color
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            )),
        child: widget,
      ),
    );
  }
}
