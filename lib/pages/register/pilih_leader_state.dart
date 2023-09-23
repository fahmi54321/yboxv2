import 'package:flutter/material.dart';
import 'package:yboxv2/models/leader/leader_res.dart';
import 'package:yboxv2/network/http_list.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class PilihLeaderState extends ChangeNotifier {
  LeaderRes? selectLeader;

  bool isLoading = false;

  List<LeaderRes> listLeader = [];

  PilihLeaderState() {
    init();
  }

  void init() async {
    Future.delayed(const Duration(milliseconds: 1500), () async {
      await getLeader();
    });
  }

  Future<void> getLeader() async {
    UtilsLoading.showLoading();

    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPListService().getLeader();

    resStep1.fold(
      (e) async {
        isLoading = false;
        notifyListeners();

        UtilsLoading.dismiss();

        UtilsLoading.showError(message: e);
      },
      (cat) async {
        listLeader = cat;
        isLoading = false;
        notifyListeners();

        UtilsLoading.dismiss();
      },
    );
  }
}
