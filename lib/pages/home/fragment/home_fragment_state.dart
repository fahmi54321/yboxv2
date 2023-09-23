import 'package:flutter/material.dart';
import 'package:yboxv2/models/count/count_amount_res.dart';
import 'package:yboxv2/models/count/count_res.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/models/user_res.dart';
import 'package:yboxv2/network/http_auth.dart';
import 'package:yboxv2/network/http_count.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class HomeFragmentState extends ChangeNotifier {
  HomeFragmentState() {
    init();
  }

  LoginRes? loginRes;
  UserRes? userRes;
  CountRes? countAlbum;
  CountRes? countVideo;
  CountRes? countRingtone;
  CountRes? countTrack;
  CountRes? countProgress;
  CountAmountRes? countAmount;

  bool isLoading = false;

  void init() async {
    isLoading = true;
    notifyListeners();

    UtilsLoading.showLoading();

    await getUser();
    await getAlbum();
    await getVideo();
    await getRingtone();
    await getTrack();
    await getAmount();
    await getProgress();

    isLoading = false;
    notifyListeners();

    UtilsLoading.dismiss();
  }

  Future<void> getUser() async {
    try {
      final resStep1 = await HTTPAuthService().getUser();

      resStep1.fold(
        (e) async {
          UtilsLoading.dismiss();
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();
        },
        (cat) async {
          userRes = cat;
          notifyListeners();
        },
      );
    } catch (e) {
      UtilsLoading.dismiss();
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getAlbum() async {
    try {
      final resStep1 = await HTTPCountService().countAlbum();

      resStep1.fold(
        (e) async {
          UtilsLoading.dismiss();
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();
        },
        (cat) async {
          countAlbum = cat;
          notifyListeners();
        },
      );
    } catch (e) {
      UtilsLoading.dismiss();
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getVideo() async {
    try {
      final resStep1 = await HTTPCountService().countVideo();

      resStep1.fold(
        (e) async {
          UtilsLoading.dismiss();
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();
        },
        (cat) async {
          countVideo = cat;
          notifyListeners();
        },
      );
    } catch (e) {
      UtilsLoading.dismiss();
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getRingtone() async {
    try {
      final resStep1 = await HTTPCountService().countRingtone();

      resStep1.fold(
        (e) async {
          UtilsLoading.dismiss();
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();
        },
        (cat) async {
          countRingtone = cat;
          notifyListeners();
        },
      );
    } catch (e) {
      UtilsLoading.dismiss();
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getTrack() async {
    try {
      final resStep1 = await HTTPCountService().countTrack();

      resStep1.fold(
        (e) async {
          UtilsLoading.dismiss();
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();
        },
        (cat) async {
          countTrack = cat;
          notifyListeners();
        },
      );
    } catch (e) {
      UtilsLoading.dismiss();
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getProgress() async {
    try {
      final resStep1 = await HTTPCountService().countProgress();

      resStep1.fold(
        (e) async {
          UtilsLoading.dismiss();
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();
        },
        (cat) async {
          countProgress = cat;
          notifyListeners();
        },
      );
    } catch (e) {
      UtilsLoading.dismiss();
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getAmount() async {
    try {
      final resStep1 = await HTTPCountService().countAmount();

      resStep1.fold(
        (e) async {
          UtilsLoading.dismiss();
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();
        },
        (cat) async {
          countAmount = cat;
          notifyListeners();
        },
      );
    } catch (e) {
      UtilsLoading.dismiss();
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();
    }
  }
}
