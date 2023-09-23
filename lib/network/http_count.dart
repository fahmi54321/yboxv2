import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/models/count/count_amount_res.dart';
import 'package:yboxv2/models/count/count_res.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/network/api_interceptor.dart';
import 'package:yboxv2/network/api_url.dart';
import 'package:yboxv2/utils/shared_pref.dart';

class HTTPCountService {
  Future<Either<String, CountRes>> countAlbum() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));
    final response = await WebService().client().get(
          '${ApiUrl.count}-album',
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );
    debugPrint('url countAlbum : ${ApiUrl.count}-album');
    debugPrint('response countAlbum : ${response.data}');

    if (response.statusCode == 200) {
      final result = CountRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, CountRes>> countTrack() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));
    final response = await WebService().client().get(
          '${ApiUrl.count}-track',
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );
    debugPrint('url countTrack : ${ApiUrl.count}-track');
    debugPrint('response countTrack : ${response.data}');

    if (response.statusCode == 200) {
      final result = CountRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, CountRes>> countRingtone() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));
    final response = await WebService().client().get(
          '${ApiUrl.count}-ringtone',
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );
    debugPrint('url countRingtone : ${ApiUrl.count}-ringtone');
    debugPrint('response countRingtone : ${response.data}');

    if (response.statusCode == 200) {
      final result = CountRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, CountRes>> countVideo() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));
    final response = await WebService().client().get(
          '${ApiUrl.count}-video',
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );
    debugPrint('url countVideo : ${ApiUrl.count}-video');
    debugPrint('response countVideo : ${response.data}');

    if (response.statusCode == 200) {
      final result = CountRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, CountRes>> countProgress() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));
    final response = await WebService().client().get(
          '${ApiUrl.count}-setup',
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );
    debugPrint('url countProgress : ${ApiUrl.count}-setup');
    debugPrint('response countProgress : ${response.data}');

    if (response.statusCode == 200) {
      final result = CountRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, CountAmountRes>> countAmount() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));
    final response = await WebService().client().get(
          ApiUrl.amount,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );
    debugPrint('url countAmount : ${ApiUrl.amount}');
    debugPrint('response countAmount : ${response.data}');

    if (response.statusCode == 200) {
      final result =
          CountAmountRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }
}
