import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/models/user_res.dart';
import 'package:yboxv2/network/api_interceptor.dart';
import 'package:yboxv2/network/api_url.dart';
import 'package:yboxv2/utils/shared_pref.dart';

class HTTPAuthService {
  Future<Either<String, LoginRes>> login({
    required Map<String, dynamic> data,
  }) async {
    final response = await WebService().client().post(
          ApiUrl.login,
          queryParameters: data,
        );
    debugPrint('url login : ${ApiUrl.login}');
    debugPrint('params login : $data');
    debugPrint('response login : ${response.data}');

    if (response.statusCode == 200) {
      final result = LoginRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, bool>> register({
    required Map<String, dynamic> data,
  }) async {
    final response = await WebService().client().post(
          ApiUrl.register,
          queryParameters: data,
        );
    debugPrint('url register : ${ApiUrl.register}');
    debugPrint('params register : $data');
    debugPrint('response register : ${response.data}');

    if (response.statusCode == 200) {
      return const Right(true);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, UserRes>> getUser() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.profile,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );
    debugPrint('url getUser : ${ApiUrl.profile}');
    debugPrint('response getUser : ${response.data}');

    if (response.statusCode == 200) {
      final result = UserRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> logout() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          ApiUrl.logout,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );
    debugPrint('url logout : ${ApiUrl.logout}');

    if (response.statusCode == 200) {
      return Right(
        response.statusCode ?? 0,
      );
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> updateUuid({
    required String uuid,
    required String token,
  }) async {
    Map<String, dynamic> params = {
      '_method': 'PUT',
      'uuid_msg': uuid,
    };

    final response = await WebService().client().post(
          ApiUrl.mssgUuid,
          data: params,
          options: Options(headers: {
            'Authorization': 'Bearer $token',
          }),
        );
    debugPrint('url updateUuid : ${ApiUrl.mssgUuid}');
    debugPrint('params updateUuid : $params');

    if (response.statusCode == 200) {
      return Right(
        response.statusCode ?? 0,
      );
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> updateTokenFirebase({
    required String tokenFirebase,
  }) async {
    Map<String, dynamic> params = {
      '_method': 'PUT',
      'token_mssg_notif': tokenFirebase,
    };

    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          ApiUrl.tokenFirebase,
          data: params,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url updateTokenFirebase : ${ApiUrl.tokenFirebase}');
    debugPrint('params updateTokenFirebase : $params');

    if (response.statusCode == 200) {
      return Right(
        response.statusCode ?? 0,
      );
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> ubahPassword({
    required Map<String, dynamic> data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    debugPrint('HTTPUbahPasswordService start');
    final response = await WebService().client().post(
          ApiUrl.ubahPass,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );
    debugPrint('url ubahPassword : ${ApiUrl.ubahPass}');
    debugPrint('params ubahPassword : $data');
    debugPrint('response ubahPassword : ${response.data}');

    if (response.statusCode == 200) {
      return Right(
        response.statusCode ?? 0,
      );
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  // Future<Either<String, int>> register({
  //   required Map<String, dynamic> data,
  // }) async {

  //   debugPrint('HTTPRegisterService start');
  //   final response = await WebService().client().post(
  //     ApiUrl.register,
  //     queryParameters: data,
  //   );
  //   debugPrint('url : ${ApiUrl.register}');
  //   debugPrint('params : $data');
  //   debugPrint(response);

  //   if (response.statusCode == 200) {
  //     return Right(
  //       response.statusCode ?? 0,
  //     );
  //   } else {
  //     return Left('Terjadi kesalahan');
  //   }
  // }
}
