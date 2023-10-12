import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/network/api_interceptor.dart';
import 'package:yboxv2/network/api_url.dart';
import 'package:yboxv2/utils/shared_pref.dart';

class HTTPApprovedService {
  Future<Either<String, bool>> approveData({
    required Map<String, dynamic> paramsData,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          ApiUrl.aprovedItem,
          data: paramsData,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url approveData : ${ApiUrl.aprovedItem}');
    debugPrint('parms approveData : $paramsData');
    debugPrint('response approveData : ${response.data}');

    if (response.statusCode == 200) {
      return const Right(true);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, bool>> rejectData({
    required Map<String, dynamic> paramsData,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          ApiUrl.rejectItem,
          data: paramsData,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url rejectData : ${ApiUrl.rejectItem}');
    debugPrint('parms rejectData : $paramsData');
    debugPrint('response rejectData : ${response.data}');

    if (response.statusCode == 200) {
      return const Right(true);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }
}
