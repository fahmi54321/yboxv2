import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:get/get.dart' as get_package;

class ApiInterceptor extends InterceptorsWrapper {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    super.onResponse(response, handler);
    if (response.statusCode == 401) {
      String msg = response.data['message'];
      if (msg == 'Unauthenticated.') {
        log(" inject Logout");

        // VUtils.toast(message: 'Token Invalid');
        // await SharedPreferencesUtils.clearLoginPreference();
        // await get_package.Get.offAll(const LoginPage());
      }
    } else {
      // return response;
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if ((err.response!.statusCode ?? 0) == 401) {
      String msg = err.response?.data['message'];

      if (msg == 'Unauthenticated.') {
        log(" inject Logout");
        // VUtils.toast(message: 'Token Invalid');
        // get_package.Get.offAllNamed(LoginPage.ROUTE);
      }
    } else if (err.response!.statusCode == 502) {
      log(" inject 502 ${err.requestOptions.uri.toString()}");
      get_package.Get.snackbar("Timeout ", "502",
          duration: const Duration(seconds: 3));
    } else {
      err.printError();
    }
  }
}

class WebService {
  Dio client() {
    final dio = Dio(BaseOptions(
      validateStatus: (status) => true,
      headers: {
        HttpHeaders.userAgentHeader: 'dio',
        'api': '1.0.0',
      },
    ));

    dio.interceptors.add(ApiInterceptor());

    dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final client = HttpClient();
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) {
          return true; // Verify the certificate.
        };
        return client;
      },
    );
    return dio;
  }
}
