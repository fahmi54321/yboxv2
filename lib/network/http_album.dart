import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/models/album/album_res.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/network/api_interceptor.dart';
import 'package:yboxv2/network/api_url.dart';
import 'package:yboxv2/utils/shared_pref.dart';

class HTTPAlbumService {
  Future<Either<String, int>> uploadAlbum({
    required FormData data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          ApiUrl.album,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );

    debugPrint('url uploadAlbum : ${ApiUrl.album}');
    debugPrint('response uploadAlbum : ${response.data}');
    debugPrint('params uploadAlbum : ${data.fields}');

    if (response.statusCode == 200) {
      return Right(response.statusCode ?? 0);
    } else if (response.statusCode == 422) {
      return const Left('Audio atau gambar formatnya kurang valid');
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> editAlbum({
    required int id,
    required FormData data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          ApiUrl.album + id.toString(),
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );

    debugPrint('url editAlbum : ${ApiUrl.album + id.toString()}');
    debugPrint('response editAlbum : ${response.data}');
    debugPrint('params editAlbum : ${data.fields}');

    if (response.statusCode == 200) {
      return Right(response.statusCode ?? 0);
    } else if (response.statusCode == 422) {
      return const Left('Audio atau gambar formatnya kurang valid');
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, AlbumRes>> getAlbum({
    required Map<String, dynamic> data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.album,
          queryParameters: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url getAlbum : ${ApiUrl.album}');
    debugPrint('params getAlbum : $data');
    debugPrint('response getAlbum : ${response.data}');

    if (response.statusCode == 200) {
      final result = AlbumRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, DataAlbumRes>> detailsAlbum({
    required String id,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.album + id,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url detailsAlbum : ${ApiUrl.album + id}');
    debugPrint('parms detailsAlbum : $id');
    debugPrint('response detailsAlbum : ${response.data}');

    if (response.statusCode == 200) {
      final result =
          DataAlbumRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }
}
