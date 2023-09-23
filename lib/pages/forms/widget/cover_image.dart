// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/resource/strings.dart';

class CoverImage extends StatelessWidget {
  final String editCover;
  final File? inputCover;
  const CoverImage({
    Key? key,
    this.editCover = '',
    this.inputCover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (editCover.isNotEmpty && inputCover == null) {
      String image = editCover.replaceAll('public', 'storage');
      String urlImage = appUrl + image;

      return Container(
        height: 100,
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: NetworkImage(
              urlImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
      );
    } else {
      if (inputCover == null) {
        return Container(
          height: 100,
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Icon(
            Icons.add,
            size: 30,
            color: primaryColor,
          ),
        );
      } else {
        return Container(
          height: 100,
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: FileImage(
                inputCover!,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      }
    }
  }
}
