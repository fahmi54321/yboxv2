// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:yboxv2/pages/register/register_state.dart';
import 'package:yboxv2/pages/register/widget/dialog_pilih_leader.dart';
import 'package:yboxv2/pages/register/widget/leader.dart';
import 'package:yboxv2/pages/register/widget/list_leader.dart';
import 'package:yboxv2/widget/v_dialog.dart';

class PilihLeaderPage extends StatefulWidget {
  final RegisterState state;
  const PilihLeaderPage({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  State<PilihLeaderPage> createState() => _PilihLeaderPageState();
}

class _PilihLeaderPageState extends State<PilihLeaderPage> {
  @override
  Widget build(BuildContext context) {
    return widget.state.selectLeader != null
        ? Leader(
            labelLeader: 'Kembali ke',
            onPilihLeader: () {
              setState(() {
                widget.state.selectLeader = null;
              });
            },
          )
        : ListLeader(
            onPilihLeader: () {
              showDialog1(
                context: context,
                widget: DialogPilihLeader(
                  onYakin: () {
                    setState(() {
                      widget.state.selectLeader = 1;
                    });

                    Navigator.pop(context);
                  },
                ),
              );
            },
          );
  }
}
