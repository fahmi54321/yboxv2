// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:yboxv2/widget/v_text.dart';

class IconButtonBar extends StatelessWidget {
  final int page;
  final int currentPage;
  final String label;
  final IconData icon;
  const IconButtonBar({
    Key? key,
    required this.page,
    required this.currentPage,
    required this.label,
    required this.icon,
  }) : super(key: key);

  Color colorIcon({
    required int page,
    required currentPage,
    required BuildContext context,
  }) {
    if (page == currentPage) {
      return Theme.of(context).colorScheme.onPrimary;
    } else {
      return Theme.of(context).colorScheme.onPrimary.withOpacity(0.23);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: page == currentPage ? 30 : 35,
            color: colorIcon(
              page: page,
              currentPage: currentPage,
              context: context,
            ),
          ),
          vText(
            label,
            fontSize: 10.0,
            fontWeight: FontWeight.w500,
            color: colorIcon(
              page: page,
              currentPage: currentPage,
              context: context,
            ),
          ),
        ],
      ),
    );
  }
}
