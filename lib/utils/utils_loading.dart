import 'package:flutter_easyloading/flutter_easyloading.dart';

class UtilsLoading {
//   EasyLoading.show(status: 'loading...');

// EasyLoading.showProgress(0.3, status: 'downloading...');

// EasyLoading.showSuccess('Great Success!');

// EasyLoading.showError('Failed with Error');

// EasyLoading.showInfo('Useful Information.');

// EasyLoading.showToast('Toast');

// EasyLoading.dismiss();

  static showLoading({String? message}) {
    return EasyLoading.show(status: message ?? 'loading...');
  }

  static showSuccess({String? message}) {
    return EasyLoading.showSuccess(
      message ?? 'Sukses',
    );
  }

  static showError({String? message}) {
    return EasyLoading.showError(message ?? 'Error');
  }

  static showInfo({String? message}) {
    return EasyLoading.showInfo(message ?? 'Info');
  }

  static showToast({String? message}) {
    return EasyLoading.showToast(message ?? 'Toast');
  }

  static dismiss() {
    return EasyLoading.dismiss();
  }
}
