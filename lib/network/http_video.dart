import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/models/video/details_video_res.dart';
import 'package:yboxv2/models/video/video_res.dart';
import 'package:yboxv2/network/api_interceptor.dart';
import 'package:yboxv2/network/api_url.dart';
import 'package:yboxv2/utils/shared_pref.dart';

class HTTPVideoService {
  Future<Either<String, int>> uploadVideo({
    required FormData data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          ApiUrl.video,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );

    debugPrint('url uploadVideo : ${ApiUrl.video}');
    debugPrint('response uploadVideo : ${response.data}');
    debugPrint('params uploadVideo : ${data.fields}');

    if (response.statusCode == 200) {
      return Right(response.statusCode ?? 0);
    } else if (response.statusCode == 422) {
      return const Left('Audio atau gambar formatnya kurang valid');
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> editVideo({
    required String id,
    required FormData data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          '${ApiUrl.video}/$id',
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );

    debugPrint('url editVideo : ${ApiUrl.video}/$id');
    debugPrint('response editVideo : ${response.data}');
    debugPrint('params editVideo : ${data.fields}');

    if (response.statusCode == 200) {
      return Right(response.statusCode ?? 0);
    } else if (response.statusCode == 422) {
      return const Left('Audio atau gambar formatnya kurang valid');
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, VideoRes>> getVideo({
    required Map<String, dynamic> data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.video,
          queryParameters: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url getVideo : ${ApiUrl.video}');
    debugPrint('params getVideo : $data');
    debugPrint('response getVideo : ${response.data}');

    if (response.statusCode == 200) {
      final result = VideoRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, DetailsVideoRes>> detailsVideo({
    required String id,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          '${ApiUrl.video}/$id',
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url detailsVideo : ${ApiUrl.video}/$id');
    debugPrint('parms detailsVideo : $id');
    debugPrint('response detailsVideo : ${response.data}');

    if (response.statusCode == 200) {
      final result =
          DetailsVideoRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }
}
