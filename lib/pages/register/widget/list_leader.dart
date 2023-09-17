import 'package:flutter/material.dart';
import 'package:yboxv2/pages/register/widget/leader.dart';

class ListLeader extends StatelessWidget {
  final Function()? onPilihLeader;
  const ListLeader({
    super.key,
    this.onPilihLeader,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 9 / 16,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Leader(
          onPilihLeader: onPilihLeader,
        );
      },
    );
  }
}
