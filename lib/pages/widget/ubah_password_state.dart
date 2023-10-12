// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:yboxv2/network/http_auth.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class UbahPasswordState extends ChangeNotifier {
  final BuildContext context;

  bool isLoadingButton = false;

  final TextEditingController passController = TextEditingController(text: '');

  UbahPasswordState({
    required this.context,
  });

  void ubahPassword() async {
    if (passController.text.isEmpty) {
      UtilsLoading.showInfo(message: 'Password tidak boleh kosong');
    } else if (passController.text.length < 8) {
      UtilsLoading.showInfo(message: 'Password belum valid');
    } else {
      isLoadingButton = true;
      notifyListeners();

      UtilsLoading.showLoading();

      Map<String, String> data = {
        '_method': 'PUT',
        'password': passController.text.toString(),
      };
      try {
        final resStep1 = await HTTPAuthService().ubahPassword(data: data);

        resStep1.fold(
          (e) async {
            UtilsLoading.dismiss();
            UtilsLoading.showError(message: e);

            isLoadingButton = false;
            notifyListeners();
          },
          (cat) async {
            UtilsLoading.dismiss();
            UtilsLoading.showSuccess(message: 'Berhasil diubah');

            isLoadingButton = false;
            notifyListeners();

            Future.delayed(const Duration(seconds: 1), () {
              Navigator.of(context).pop(true);
            });
          },
        );
      } catch (e) {
        UtilsLoading.dismiss();
        UtilsLoading.showError(message: '$e');

        isLoadingButton = false;
        notifyListeners();
      }
    }
  }
}
