import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/models/track/details_track_res.dart';
import 'package:yboxv2/network/http_approved.dart';
import 'package:yboxv2/network/http_track.dart';
import 'package:yboxv2/utils/shared_pref.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class DetailsTrackState extends ChangeNotifier {
  final BuildContext context;
  final String id;

  bool isLoading = true;
  bool isLoadingApproved = false;
  bool isLoadingReject = false;

  DetailsTrackRes? dataTrack;
  LoginRes? loginRes;

  DetailsTrackState({
    required this.context,
    required this.id,
  }) {
    init();
  }

  void init() async {
    Future.delayed(const Duration(milliseconds: 500), () async {
      await getUserData();
      await getDetailsTrack();
    });
  }

  Future<void> getUserData() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));
    notifyListeners();
  }

  Future<void> getDetailsTrack() async {
    final resStep1 = await HTTPTrackService().detailsTrack(id: id);

    resStep1.fold(
      (e) async {
        isLoading = false;
        notifyListeners();

        UtilsLoading.showError(message: e);
      },
      (cat) async {
        dataTrack = cat;
        isLoading = false;
        notifyListeners();
      },
    );
  }

  Future<void> approveTrack() async {
    UtilsLoading.showLoading(message: 'Loading');

    isLoadingApproved = true;
    notifyListeners();

    Map<String, dynamic> data = {
      'id': dataTrack?.id,
      'type': 2,
    };

    final resStep1 = await HTTPApprovedService().approveData(paramsData: data);

    resStep1.fold(
      (e) async {
        isLoadingApproved = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        isLoadingApproved = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showSuccess(message: 'Berhasil diterima');

        Future.delayed(const Duration(seconds: 1), () {
          getDetailsTrack();
        });
      },
    );
  }

  Future<void> rejectTrack() async {
    UtilsLoading.showLoading(message: 'Loading');

    isLoadingReject = true;
    notifyListeners();

    Map<String, dynamic> data = {
      'id': dataTrack?.id,
      'type': 2,
    };

    final resStep1 = await HTTPApprovedService().rejectData(paramsData: data);

    resStep1.fold(
      (e) async {
        isLoadingReject = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        isLoadingReject = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showSuccess(message: 'Berhasil ditolak');

        Future.delayed(const Duration(seconds: 1), () {
          getDetailsTrack();
        });
      },
    );
  }
}
