// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:yboxv2/models/leader/leader_res.dart';
import 'package:yboxv2/pages/register/widget/leader.dart';
import 'package:yboxv2/pages/widget/data_belum_ada.dart';

class ListLeader extends StatelessWidget {
  final Function(LeaderRes leader) onPilihLeader;
  final List<LeaderRes> listLeader;
  const ListLeader({
    Key? key,
    required this.onPilihLeader,
    required this.listLeader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return listLeader.isEmpty
        ? const DataBelumAda()
        : GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 9 / 16,
            ),
            itemCount: listLeader.length,
            itemBuilder: (BuildContext context, int index) {
              return Leader(
                onPilihLeader: onPilihLeader,
                leader: listLeader[index],
              );
            },
          );
  }
}
