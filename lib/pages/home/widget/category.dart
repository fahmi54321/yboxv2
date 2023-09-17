// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class Category extends StatelessWidget {
  final String icon;
  final String vector;
  final String label;
  final String total;
  final bool isOffsetRight;
  final bool isAmount;
  const Category({
    Key? key,
    required this.icon,
    required this.vector,
    required this.label,
    required this.total,
    this.isOffsetRight = false,
    this.isAmount = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 11.0,
        horizontal: 13.0,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.onPrimary.withOpacity(0.53),
            Theme.of(context).colorScheme.onPrimary,
            Theme.of(context).colorScheme.onPrimary,
            Theme.of(context).colorScheme.onPrimary,
            Theme.of(context).colorScheme.onPrimary,
            Theme.of(context).colorScheme.onPrimary,
            Theme.of(context).colorScheme.onPrimary.withOpacity(0.53),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Colors.black.withOpacity(0.23),
            offset: isOffsetRight
                ? const Offset(
                    2,
                    4,
                  )
                : const Offset(-2, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                icon,
                width: 44.0,
                height: 44.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 13.0),
              Expanded(
                child: Image.asset(
                  vector,
                  height: 82.0,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ],
          ),
          Visibility(
            visible: !isAmount,
            child: vText(
              '$label ($total)',
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              color: black5,
            ),
          ),
          Visibility(
            visible: isAmount,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                vText(
                  label,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  color: black5,
                ),
                vText(
                  total,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  color: black5,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
