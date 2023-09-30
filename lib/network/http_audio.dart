import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/models/audio/audio_res.dart';
import 'package:yboxv2/models/audio/details_audio_res.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/network/api_interceptor.dart';
import 'package:yboxv2/network/api_url.dart';
import 'package:yboxv2/utils/shared_pref.dart';

class HTTPAudioService {
  Future<Either<String, int>> uploadAudio({
    required FormData data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          ApiUrl.audio,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );

    debugPrint('url uploadAudio : ${ApiUrl.audio}');
    debugPrint('response uploadAudio : ${response.data}');
    debugPrint('params uploadAudio : ${data.fields}');

    if (response.statusCode == 200) {
      return Right(response.statusCode ?? 0);
    } else if (response.statusCode == 422) {
      return const Left('Audio atau gambar formatnya kurang valid');
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> editAudio({
    required String id,
    required FormData data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          '${ApiUrl.audio}/$id',
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );

    debugPrint('url editAudio : ${ApiUrl.audio}/$id');
    debugPrint('response editAudio : ${response.data}');
    debugPrint('params editAudio : ${data.fields}');

    if (response.statusCode == 200) {
      return Right(response.statusCode ?? 0);
    } else if (response.statusCode == 422) {
      return const Left('Audio atau gambar formatnya kurang valid');
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, AudioRes>> getAudio({
    required Map<String, dynamic> data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.audio,
          queryParameters: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url getAudio : ${ApiUrl.audio}');
    debugPrint('params getAudio : $data');
    debugPrint('response getAudio : ${response.data}');

    if (response.statusCode == 200) {
      final result = AudioRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, DetailsAudioRes>> detailsAudio({
    required String id,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          '${ApiUrl.audio}/$id',
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url detailsAudio : ${ApiUrl.audio}/$id');
    debugPrint('parms detailsAudio : $id');
    debugPrint('response detailsAudio : ${response.data}');

    if (response.statusCode == 200) {
      final result =
          DetailsAudioRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }
}
