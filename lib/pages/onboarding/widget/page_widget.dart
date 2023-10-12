// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:yboxv2/widget/v_text.dart';

class PageWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final Color color;
  const PageWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 35.0,
      ),
      child: ListView(
        children: [
          vText(
            title,
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 28.0,
            fontWeight: FontWeight.w600,
            maxLines: 2,
          ),
          const SizedBox(height: 12.0),
          vText(
            subtitle,
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
            maxLines: 3,
          ),
          const SizedBox(height: 80.0),
          Image.asset(
            image,
            width: MediaQuery.of(context).size.width,
            height: 308.0,
          ),
        ],
      ),
    );
  }
}
