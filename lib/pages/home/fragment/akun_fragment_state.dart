// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import 'package:yboxv2/network/http_auth.dart';
import 'package:yboxv2/pages/login/login_page.dart';
import 'package:yboxv2/pages/started/started_page.dart';
import 'package:yboxv2/utils/shared_pref.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class AkunFragmentState extends ChangeNotifier {
  final BuildContext context;

  bool isKonek = false;
  bool isLoadingLogout = false;

  AkunFragmentState({
    required this.context,
  });

  void cekKoneksi() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      isKonek = true;
      notifyListeners();

      await logout();
    } else if (connectivityResult == ConnectivityResult.wifi) {
      isKonek = true;
      notifyListeners();

      await logout();
    } else if (connectivityResult == ConnectivityResult.none) {
      isKonek = false;
      notifyListeners();
      await goToLogin();
    } else {
      isKonek = false;
      notifyListeners();
      await goToLogin();
    }
  }

  Future<void> logout() async {
    UtilsLoading.showLoading(message: 'Loading...');

    isLoadingLogout = true;
    notifyListeners();

    try {
      final resStep1 = await HTTPAuthService().logout();

      resStep1.fold(
        (e) async {
          UtilsLoading.dismiss();
          UtilsLoading.showError(message: e);

          isLoadingLogout = false;
          notifyListeners();
        },
        (cat) async {
          isLoadingLogout = false;
          notifyListeners();
          UtilsLoading.dismiss();

          await goToLogin();
        },
      );
    } catch (e) {
      UtilsLoading.dismiss();
      UtilsLoading.showError(message: '$e');

      isLoadingLogout = false;
      notifyListeners();
    }
  }

  Future<void> goToLogin() async {
    await SharedPreferencesUtils.clearLoginPreference();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        StartedPage.route,
        (route) => false,
      );
    });
  }
}
