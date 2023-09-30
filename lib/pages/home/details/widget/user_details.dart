// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/utils.dart';

class UserDetails extends StatelessWidget {
  final String? imageUser;
  const UserDetails({
    Key? key,
    required this.imageUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (imageUser ?? '').isNotEmpty
        ? CircleAvatar(
            child: Image.network(
              Utils.convertImage(
                url: imageUser ?? '',
              ),
              width: 30.0,
              height: 30.0,
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                return child;
              },
              errorBuilder: ((context, error, stackTrace) {
                return const SizedBox(
                  width: 84.0,
                  height: 56.0,
                  child: Placeholder(
                    color: primaryColor,
                  ),
                );
              }),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
              fit: BoxFit.cover,
            ),
          )
        : Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: Image.asset(
                  'assets/image/the_band_party.png',
                ).image,
                fit: BoxFit.cover,
              ),
            ),
          );
  }
}
