import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/models/akun_bank/akun_bank_res.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/network/api_interceptor.dart';
import 'package:yboxv2/network/api_url.dart';
import 'package:yboxv2/utils/shared_pref.dart';

class HTTPAkunBankService {
  Future<Either<String, int>> uploadAkunBank({
    required Map<String, dynamic> data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          ApiUrl.akunBank,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );

    debugPrint('url uploadAkunBank : ${ApiUrl.akunBank}');
    debugPrint('response uploadAkunBank : ${response.data}');
    debugPrint('params uploadAkunBank : $data');

    if (response.statusCode == 200) {
      return Right(response.statusCode ?? 0);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> editAkunBank({
    required Map<String, dynamic> data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          ApiUrl.akunBank,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );

    debugPrint('url editAkunBank : ${ApiUrl.akunBank}');
    debugPrint('response editAkunBank : ${response.data}');
    debugPrint('params editAkunBank : $data');

    if (response.statusCode == 200) {
      return Right(response.statusCode ?? 0);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<DataBankRes>>> getAkunBank() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          ApiUrl.akunBank,
          data: {
            '_method': 'GET',
          },
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url getAkunBank : ${ApiUrl.akunBank}');
    debugPrint('response getAkunBank : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => DataBankRes.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> hapusAkunBank({
    required String id,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          ApiUrl.akunBank,
          data: {
            '_method': 'DELETE',
            'id': id,
          },
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );

    debugPrint('url hapusAkunBank : ${ApiUrl.akunBank}');
    debugPrint('response hapusAkunBank : ${response.data}');

    if (response.statusCode == 200) {
      return Right(response.statusCode ?? 0);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }
}
