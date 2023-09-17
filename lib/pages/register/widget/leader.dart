import 'package:flutter/material.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class Leader extends StatelessWidget {
  final Function()? onPilihLeader;
  final String labelLeader;
  const Leader({
    super.key,
    this.onPilihLeader,
    this.labelLeader = 'Pilih Leader',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDoD2pcCnw-P87_kDGUX29SIhn3j2lq-hHA0D2VgJN6A&s',
          ).image,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextButton(
            onPressed: onPilihLeader,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 8.0,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: vText(
                labelLeader,
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    vText(
                      'Novita Aulia',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    vText(
                      'Song Writer',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: white2,
                    ),
                  ],
                ),
              ),
              Container(
                width: 13.0,
                height: 13.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.onPrimary,
                  border: Border.all(width: 4.0, color: green2),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
