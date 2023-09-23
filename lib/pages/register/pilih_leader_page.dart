// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yboxv2/models/leader/leader_res.dart';
import 'package:yboxv2/pages/register/pilih_leader_state.dart';
import 'package:yboxv2/pages/register/widget/dialog_pilih_leader.dart';
import 'package:yboxv2/pages/register/widget/leader.dart';
import 'package:yboxv2/pages/register/widget/list_leader.dart';
import 'package:yboxv2/widget/v_dialog.dart';

class PilihLeaderPage extends StatefulWidget {
  final Function(LeaderRes? selectLeader) getLeader;
  const PilihLeaderPage({
    Key? key,
    required this.getLeader,
  }) : super(key: key);

  @override
  State<PilihLeaderPage> createState() => _PilihLeaderPageState();
}

class _PilihLeaderPageState extends State<PilihLeaderPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PilihLeaderState(),
      child: Consumer(
        builder: (BuildContext context, PilihLeaderState state, _) {
          return state.isLoading
              ? SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.40,
                )
              : state.selectLeader != null
                  ? Leader(
                      selectNameLeader: 'Kembali ke',
                      onPilihLeader: (LeaderRes leader) {
                        setState(() {
                          state.selectLeader = null;
                        });
                      },
                      leader: state.selectLeader ??
                          const LeaderRes(
                            id: '0',
                            name: 'No Name',
                            image: '',
                          ),
                    )
                  : ListLeader(
                      listLeader: state.listLeader,
                      onPilihLeader: (LeaderRes leader) {
                        showDialog1(
                          context: context,
                          widget: DialogPilihLeader(
                            onYakin: () {
                              setState(() {
                                state.selectLeader = leader;
                              });

                              widget.getLeader(state.selectLeader);

                              Navigator.pop(context);
                            },
                          ),
                        );
                      },
                    );
        },
      ),
    );
  }
}
