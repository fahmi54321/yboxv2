import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/models/video/details_video_res.dart';
import 'package:yboxv2/network/http_approved.dart';
import 'package:yboxv2/network/http_video.dart';
import 'package:yboxv2/utils/shared_pref.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class DetailsVideoState extends ChangeNotifier {
  final BuildContext context;
  final String id;

  bool isLoading = true;
  bool isLoadingApproved = true;
  bool isLoadingReject = true;

  DetailsVideoRes? dataVideo;
  LoginRes? loginRes;

  DetailsVideoState({
    required this.context,
    required this.id,
  }) {
    init();
  }

  void init() async {
    Future.delayed(const Duration(milliseconds: 500), () async {
      await getUserData();
      await getDetailsVideo();
    });
  }

  Future<void> getUserData() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));
    notifyListeners();
  }

  Future<void> getDetailsVideo() async {
    UtilsLoading.showLoading(message: 'Loading');

    final resStep1 = await HTTPVideoService().detailsVideo(id: id);

    resStep1.fold(
      (e) async {
        isLoading = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        dataVideo = cat;
        isLoading = false;
        notifyListeners();

        UtilsLoading.dismiss();
      },
    );
  }

  Future<void> approveVideo() async {
    UtilsLoading.showLoading(message: 'Loading');

    isLoadingApproved = true;
    notifyListeners();

    Map<String, dynamic> data = {
      'id': dataVideo?.id,
      'type': 4,
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
          getDetailsVideo();
        });
      },
    );
  }

  Future<void> rejectVideo() async {
    UtilsLoading.showLoading(message: 'Loading');

    isLoadingReject = true;
    notifyListeners();

    Map<String, dynamic> data = {
      'id': dataVideo?.id,
      'type': 4,
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
          getDetailsVideo();
        });
      },
    );
  }
}
