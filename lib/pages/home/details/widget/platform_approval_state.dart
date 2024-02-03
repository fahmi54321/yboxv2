import 'package:flutter/material.dart';
import 'package:yboxv2/models/platform/platform_res.dart';
import 'package:yboxv2/network/http_approved.dart';
import 'package:yboxv2/network/http_list.dart';
import 'package:yboxv2/pages/home/details/utils/utils_details.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class PlatformApprovalAlbumState extends ChangeNotifier {
  final String idDetails;
  final int statusFromDetails;
  final BuildContext context;

  bool isLoadingList = false;
  bool isLoadingSendData = false;

  List<PlatformRes> listPlatform = [];
  List<PlatformRes> listPlatformProses = [];

  PlatformApprovalAlbumState({
    required this.idDetails,
    required this.context,
    required this.statusFromDetails,
  }) {
    init();
  }

  void init() async {
    isLoadingList = true;
    notifyListeners();

    await getPlatform();
    await getPlatformProses();

    isLoadingList = false;
    notifyListeners();
  }

  Future<void> getPlatform() async {
    Map<String, dynamic> params = {
      'id': idDetails,
      'type': 1,
    };

    final resStep1 = await HTTPListService().getPlatform(
      paramsData: params,
    );

    resStep1.fold(
      (e) async {
        isLoadingList = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        listPlatform = cat;
        notifyListeners();
      },
    );
  }

  Future<void> getPlatformProses() async {
    Map<String, dynamic> params = {
      'id': idDetails,
      'type': 1,
    };

    final resStep1 = await HTTPListService().getPlatformProses(
      paramsData: params,
    );

    resStep1.fold(
      (e) async {
        isLoadingList = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        listPlatformProses = cat;
        notifyListeners();
      },
    );
  }

  Future<void> sendAlbum() async {
    int count = 0;

    for (var element in listPlatform) {
      if (element.isChecked) {
        count = count + 1;
      }
    }

    if (count == 0) {
      UtilsLoading.dismiss();
      UtilsLoading.showInfo(message: 'Minamal harus pilih satu');
    } else {
      UtilsLoading.showLoading(message: 'Loading');

      isLoadingSendData = true;
      notifyListeners();

      Map<String, dynamic> data = {
        'id': idDetails,
        'type': 1,
        'platform': UtilsDetails.getIdListPlatform(list: listPlatform),
      };

      final resStep1 = await HTTPApprovedService().sendData(paramsData: data);

      resStep1.fold(
        (e) async {
          isLoadingSendData = false;
          notifyListeners();

          UtilsLoading.dismiss();
          UtilsLoading.showError(message: e);
        },
        (cat) async {
          isLoadingSendData = false;
          notifyListeners();

          UtilsLoading.dismiss();
          UtilsLoading.showSuccess(message: 'Berhasil dikirim');

          Future.delayed(const Duration(seconds: 1), () {
            Navigator.of(context).pop(true);
          });
        },
      );
    }
  }
}
