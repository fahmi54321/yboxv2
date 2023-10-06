import 'package:flutter/material.dart';
import 'package:yboxv2/network/http_auth.dart';
import 'package:yboxv2/pages/home/home_page.dart';
import 'package:yboxv2/utils/shared_pref.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class LoginState extends ChangeNotifier {
  final BuildContext context;

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passController = TextEditingController(text: '');

  bool isLoading = false;

  LoginState(this.context);

  void login() async {
    if (emailController.text.isEmpty) {
      UtilsLoading.showInfo(message: 'Email tidak boleh kosong');
    } else if (passController.text.isEmpty) {
      UtilsLoading.showInfo(message: 'Password tidak boleh kosong');
    } else if (passController.text.length < 8) {
      UtilsLoading.showInfo(message: 'Password belum valid');
    } else {
      isLoading = true;
      notifyListeners();

      UtilsLoading.showLoading();

      Map<String, String> data = {
        'username': emailController.text.toString(),
        'password': passController.text.toString(),
      };
      try {
        final resStep1 = await HTTPAuthService().login(data: data);

        resStep1.fold(
          (e) async {
            UtilsLoading.dismiss();
            UtilsLoading.showError(message: e);

            isLoading = false;
            notifyListeners();
          },
          (cat) async {
            await SharedPreferencesUtils.saveLoginPreference(cat);

            isLoading = false;
            notifyListeners();

            UtilsLoading.dismiss();
            UtilsLoading.showSuccess(message: 'Berhasil masuk');

            Future.delayed(
              const Duration(milliseconds: 2000),
              () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  HomePage.route,
                  (route) => false,
                );
              },
            );
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
}
