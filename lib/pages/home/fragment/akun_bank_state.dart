import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yboxv2/models/akun_bank/akun_bank_res.dart';
import 'package:yboxv2/network/http_akun_bank.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class AkunBankState extends ChangeNotifier {
  BuildContext context;

  List<DataBankRes> listAkunBank = [];

  bool isLoading = false;

  AkunBankState({required this.context}) {
    init();
  }

  init() async {
    isLoading = true;
    notifyListeners();

    await getBank();

    isLoading = false;
    notifyListeners();
  }

  Future<void> getBank() async {
    try {
      final resStep1 = await HTTPAkunBankService().getAkunBank();

      resStep1.fold(
        (e) async {
          isLoading = false;
          notifyListeners();

          UtilsLoading.dismiss();
          UtilsLoading.showError(message: e);
        },
        (cat) async {
          listAkunBank = cat;
          notifyListeners();
        },
      );
    } catch (error) {
      isLoading = false;
      notifyListeners();

      UtilsLoading.dismiss();
      UtilsLoading.showError(message: '$error');
    }
  }

  Future<void> hapusBank(String id) async {
    UtilsLoading.showLoading(message: 'Loading...');
    try {
      final resStep1 = await HTTPAkunBankService().hapusAkunBank(id: id);

      resStep1.fold(
        (e) async {
          UtilsLoading.dismiss();
          UtilsLoading.showError(message: e);
        },
        (cat) async {
          UtilsLoading.showSuccess(message: 'Berhasil dihapus');

          Future.delayed(const Duration(seconds: 1), () {
            getBank();
          });
        },
      );
    } catch (error) {
      isLoading = false;
      notifyListeners();

      UtilsLoading.dismiss();
      UtilsLoading.showError(message: '$error');
    }
  }
}
