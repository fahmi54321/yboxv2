import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/models/track/details_track_res.dart';
import 'package:yboxv2/models/track/track_res.dart';
import 'package:yboxv2/network/api_interceptor.dart';
import 'package:yboxv2/network/api_url.dart';
import 'package:yboxv2/utils/shared_pref.dart';

class HTTPTrackService {
  Future<Either<String, int>> uploadTrack({
    required FormData data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          ApiUrl.track,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );

    debugPrint('url uploadTrack : ${ApiUrl.track}');
    debugPrint('response uploadTrack : ${response.data}');
    debugPrint('params uploadTrack : ${data.fields}');

    if (response.statusCode == 200) {
      return Right(response.statusCode ?? 0);
    } else if (response.statusCode == 422) {
      return const Left('Audio atau gambar formatnya kurang valid');
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> editTrack({
    required String id,
    required FormData data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          '${ApiUrl.track}/$id',
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );

    debugPrint('url editTrack : ${ApiUrl.track}/$id');
    debugPrint('response editTrack : ${response.data}');
    debugPrint('params editTrack : ${data.fields}');

    if (response.statusCode == 200) {
      return Right(response.statusCode ?? 0);
    } else if (response.statusCode == 422) {
      return const Left('Audio atau gambar formatnya kurang valid');
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, TrackRes>> getTrack({
    required Map<String, dynamic> data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.track,
          queryParameters: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url getTrack : ${ApiUrl.track}');
    debugPrint('params getTrack : $data');
    debugPrint('response getTrack : ${response.data}');

    if (response.statusCode == 200) {
      final result = TrackRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, DetailsTrackRes>> detailsTrack({
    required String id,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          '${ApiUrl.track}/$id',
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url detailsTrack : ${ApiUrl.track}/$id');
    debugPrint('parms detailsTrack : $id');
    debugPrint('response detailsTrack : ${response.data}');

    if (response.statusCode == 200) {
      final result =
          DetailsTrackRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }
}
