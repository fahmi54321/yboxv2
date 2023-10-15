import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/models/album/details_album_res.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/network/http_album.dart';
import 'package:yboxv2/network/http_approved.dart';
import 'package:yboxv2/utils/shared_pref.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class DetailsAlbumState extends ChangeNotifier {
  final BuildContext context;
  final String id;
  final progressList = <double>[];

  bool isLoading = true;
  bool isLoadingApproved = false;
  bool isLoadingReject = false;
  bool isLoadingDownload = false;

  DetailsAlbumRes? dataAlbum;
  LoginRes? loginRes;

  double currentProgress(int index) {
    try {
      return progressList[index];
    } catch (e) {
      progressList.add(0.0);
      return 0;
    }
  }

  String get currentProgressView => '${(currentProgress(0) * 100).round()} %';
  int get currentProgressViewInt => (currentProgress(0) * 100).round();

  DetailsAlbumState({
    required this.context,
    required this.id,
  }) {
    init();
  }

  void init() async {
    Future.delayed(const Duration(milliseconds: 500), () async {
      await getUserData();
      await getDetailsAlbum();
    });
  }

  Future<void> getUserData() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));
    notifyListeners();
  }

  Future<void> getDetailsAlbum() async {
    final resStep1 = await HTTPAlbumService().detailsAlbum(id: id);

    resStep1.fold(
      (e) async {
        isLoading = false;
        notifyListeners();

        UtilsLoading.showError(message: e);
      },
      (cat) async {
        dataAlbum = cat;
        isLoading = false;
        notifyListeners();
      },
    );
  }

  Future<void> approveAlbum() async {
    UtilsLoading.showLoading(message: 'Loading');

    isLoadingApproved = true;
    notifyListeners();

    Map<String, dynamic> data = {
      'id': dataAlbum?.id,
      'type': 1,
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
          getDetailsAlbum();
        });
      },
    );
  }

  Future<void> rejectAlbum() async {
    UtilsLoading.showLoading(message: 'Loading');

    isLoadingReject = true;
    notifyListeners();

    Map<String, dynamic> data = {
      'id': dataAlbum?.id,
      'type': 1,
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
          getDetailsAlbum();
        });
      },
    );
  }

  Future<void> download({
    required int index,
    required String urlDownload,
  }) async {
    isLoadingDownload = true;
    notifyListeners();

    final dio = Dio();

    final nameFile = urlDownload.split('/');
    final name = nameFile.isNotEmpty ? nameFile.last : 'no name';

    try {
      await dio.download(
        urlDownload,
        "/storage/emulated/0/Download/$name",
        onReceiveProgress: ((count, total) async {
          await Future.delayed(const Duration(seconds: 1), () {
            progressList[index] = (count / total);
            notifyListeners();
          });
        }),
      );

      Future.delayed(const Duration(seconds: 1), () {
        UtilsLoading.dismiss();
        UtilsLoading.showSuccess(
          message: 'Berhasil download',
          duration: 2,
        );
      });
    } on DioException catch (e) {
      debugPrint("error downloading file $e");
      isLoadingDownload = false;
      notifyListeners();

      UtilsLoading.dismiss();
      UtilsLoading.showSuccess(message: 'Gagal download');
    }
  }
}
