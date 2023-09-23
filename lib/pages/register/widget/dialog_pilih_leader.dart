// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class DialogPilihLeader extends StatelessWidget {
  final Function()? onYakin;
  const DialogPilihLeader({
    Key? key,
    this.onYakin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30.0,
        horizontal: 15.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          vText(
            'Apakah anda yakin memilih Novita Aulia sebagai leader ?',
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: black3,
            align: TextAlign.center,
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: OutlinedButton.styleFrom(
                  alignment: Alignment.center,
                  backgroundColor: Theme.of(context).colorScheme.onPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                  ),
                  side: const BorderSide(
                    color: primaryColor,
                  ),
                ),
                child: vText(
                  'batal'.toUpperCase(),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                ),
              ),
              const SizedBox(width: 10.0),
              OutlinedButton(
                onPressed: onYakin,
                style: OutlinedButton.styleFrom(
                  alignment: Alignment.center,
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                  ),
                  side: const BorderSide(color: primaryColor),
                ),
                child: vText(
                  'Yakin'.toUpperCase(),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  color: white1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
