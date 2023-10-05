import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/models/grafik/grafik_res.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/network/api_interceptor.dart';
import 'package:yboxv2/network/api_url.dart';
import 'package:yboxv2/utils/shared_pref.dart';

class HTTPGrafikService {
  Future<Either<String, List<DataSeries>>> getGrafik() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.grafikBulanan,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );

    debugPrint('url getGrafik : ${ApiUrl.grafikBulanan}');
    debugPrint('response getGrafik : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data['series'] as List<dynamic>)
          .map((e) => DataSeries.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }
}
