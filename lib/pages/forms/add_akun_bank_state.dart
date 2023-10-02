import 'package:flutter/material.dart';
import 'package:yboxv2/models/akun_bank/akun_bank_res.dart';
import 'package:yboxv2/models/general/bank_res.dart';
import 'package:yboxv2/network/http_akun_bank.dart';
import 'package:yboxv2/network/http_list.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class AddAkunBankState extends ChangeNotifier {
  final BuildContext context;
  final DataBankRes? dataBank;

  List<BankRes> listBank = [];
  bool isLoading = false;
  bool isLoadingList = false;
  bool isLoadingButton = false;
  BankRes? selectBank;

  TextEditingController noInput = TextEditingController();
  TextEditingController nameRekBank = TextEditingController();
  TextEditingController namAkunBank = TextEditingController();

  AddAkunBankState({
    required this.context,
    this.dataBank,
  }) {
    init();
  }

  init() async {
    isLoadingList = true;
    notifyListeners();

    if (dataBank != null) {
      noInput.text = dataBank!.noRek;
      nameRekBank.text = dataBank!.namaDalamRekening;
      namAkunBank.text = dataBank!.namaAkun;
    }

    UtilsLoading.showLoading(message: 'Loading');

    await getBank();

    UtilsLoading.dismiss();

    isLoadingList = false;
    notifyListeners();
  }

  Future<void> getBank() async {
    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPListService().getBank();
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
        notifyListeners();

        if (dataBank != null) {
          final data = listBank
              .where((element) => element.id == dataBank!.bank!.id)
              .toList();
          if (data.isNotEmpty) {
            selectBank = BankRes(id: data.first.id, name: data.first.name);
            notifyListeners();
          } else {
            selectBank = cat[0];
            notifyListeners();
          }
        } else {
          selectBank = cat[0];
          notifyListeners();
        }
      },
    );
  }

  void cekValidasiTransaksiForm() async {
    if (selectBank == null) {
      UtilsLoading.showInfo(message: 'Bank tidak boleh kosong');
    } else if (noInput.text.isEmpty) {
      UtilsLoading.showInfo(message: 'Nomor bank tidak boleh kosong');
    } else if (nameRekBank.text.isEmpty) {
      UtilsLoading.showInfo(message: 'Nama rekening tidak boleh kosong');
    } else if (namAkunBank.text.isEmpty) {
      UtilsLoading.showInfo(message: 'Nama akun bank tidak boleh kosong');
    } else {
      isLoadingButton = true;
      notifyListeners();

      if (dataBank != null) {
        Map<String, dynamic> data = {
          "_method": 'PUT',
          "id": dataBank!.id,
          "bank_name": selectBank?.id.toString(),
          "acc_num": noInput.text,
          "name_on_bank": nameRekBank.text,
          "name_acc": namAkunBank.text,
        };
        await editBank(data);
      } else {
        Map<String, dynamic> data = {
          "bank_name": selectBank?.id.toString(),
          "acc_num": noInput.text,
          "name_on_bank": nameRekBank.text,
          "name_acc": namAkunBank.text,
        };
        await saveBank(data);
      }
    }
  }

  Future<void> saveBank(Map<String, dynamic> data) async {
    isLoadingButton = true;
    notifyListeners();

    UtilsLoading.showLoading(message: 'Loading...');

    final resStep1 = await HTTPAkunBankService().uploadAkunBank(
      data: data,
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

        UtilsLoading.showSuccess(message: 'Berhasil simpan');

        Future.delayed(const Duration(seconds: 2), () {
          Navigator.of(context).pop(true);
        });
      },
    );
  }

  Future<void> editBank(Map<String, dynamic> data) async {
    isLoadingButton = true;
    notifyListeners();

    UtilsLoading.showLoading(message: 'Loading...');

    final resStep1 = await HTTPAkunBankService().editAkunBank(
      data: data,
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
