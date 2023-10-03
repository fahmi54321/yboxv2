import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/models/akun_bank/akun_bank_res.dart';
import 'package:yboxv2/network/http_akun_bank.dart';
import 'package:yboxv2/network/http_transaksi.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class AddTransactionState extends ChangeNotifier {
  BuildContext context;

  List<DataBankRes> listBank = [];
  bool isLoading = false;
  bool isLoadingList = false;
  bool isLoadingButton = false;
  DataBankRes? selectBank;

  TextEditingController jmlInput = TextEditingController();

  AddTransactionState(
    this.context,
  ) {
    init();
  }

  init() async {
    isLoadingList = true;
    notifyListeners();

    UtilsLoading.showLoading(message: 'Loading');

    await getBank();

    UtilsLoading.dismiss();

    isLoadingList = false;
    notifyListeners();
  }

  Future<void> getBank() async {
    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPAkunBankService().getAkunBank();
    isLoading = false;

    notifyListeners();
    resStep1.fold(
      (e) async {
        isLoadingList = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        listBank = cat;
        selectBank = cat[0];
        notifyListeners();
      },
    );
  }

  void cekValidasiTransaksiForm() async {
    isLoadingButton = true;
    notifyListeners();

    if (listBank.isEmpty) {
      isLoadingButton = false;
      notifyListeners();

      UtilsLoading.showInfo(message: 'List Bank Kosong');
    } else if (selectBank == null) {
      isLoadingButton = false;
      notifyListeners();

      UtilsLoading.showInfo(message: 'Bank tidak boleh kosong');
    } else if (jmlInput.text.isEmpty) {
      isLoadingButton = false;
      notifyListeners();

      UtilsLoading.showInfo(message: 'Jumlah tidak boleh kosong');
    } else {
      isLoadingButton = true;
      notifyListeners();

      var formData = FormData.fromMap(
        {
          "acc_bank": selectBank!.id,
          "jumlah": jmlInput.text.toString(),
        },
      );

      await saveTransaksi(formData);
    }
  }

  Future<void> saveTransaksi(FormData formData) async {
    isLoadingButton = true;
    notifyListeners();

    UtilsLoading.showLoading(message: 'Loading...');

    final resStep1 = await HTTPTransactionService().uploadTransaction(
      data: formData,
    );

    resStep1.fold(
      (e) async {
        isLoadingButton = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showInfo(message: e);
      },
      (cat) async {
        isLoadingButton = false;
        notifyListeners();

        UtilsLoading.showSuccess(message: 'Berhasil disimpan');

        Future.delayed(const Duration(seconds: 1), () {
          Navigator.of(context).pop(true);
        });
      },
    );
  }
}
