// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:yboxv2/models/leader/leader_res.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/utils.dart';
import 'package:yboxv2/widget/v_text.dart';

class Leader extends StatelessWidget {
  final Function(LeaderRes leader) onPilihLeader;
  final String selectNameLeader;
  final LeaderRes leader;
  const Leader({
    Key? key,
    required this.onPilihLeader,
    this.selectNameLeader = 'Pilih Leader',
    required this.leader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              Utils.displayImage(
                leader.image,
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                return child;
              },
              errorBuilder: ((context, error, stackTrace) {
                return Image.asset("assets/image/logo.png");
              }),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  onPilihLeader(leader);
                },
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
                    selectNameLeader,
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: primaryColor2,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          vText(
                            leader.name,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: primaryColor,
                          ),
                          vText(
                            'Leader',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: primaryColor,
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
