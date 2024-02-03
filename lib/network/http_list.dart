import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/models/general/bank_res.dart';
import 'package:yboxv2/models/general/genre_res.dart';
import 'package:yboxv2/models/general/label_res.dart';
import 'package:yboxv2/models/general/language_res.dart';
import 'package:yboxv2/models/general/publisher_res.dart';
import 'package:yboxv2/models/general/publishing_res.dart';
import 'package:yboxv2/models/general/roles_res.dart';
import 'package:yboxv2/models/leader/leader_res.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/models/onboarding/onboarding_res.dart';
import 'package:yboxv2/models/platform/platform_res.dart';
import 'package:yboxv2/models/user_member_res.dart';
import 'package:yboxv2/network/api_interceptor.dart';
import 'package:yboxv2/network/api_url.dart';
import 'package:yboxv2/utils/shared_pref.dart';

class HTTPListService {
  Future<Either<String, List<LeaderRes>>> getLeader() async {
    // var dataToken = await SharedPreferencesUtils.getLoginPreference();
    // LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.leader,
        );

    debugPrint('url getLeader : ${ApiUrl.leader}');
    debugPrint('response getLeader : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => LeaderRes.fromJson(e as Map<String, dynamic>))
          .toList();

      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<LanguageRes>>> getLanguage() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.language,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );

    debugPrint('url getLanguage : ${ApiUrl.language}');
    debugPrint('response getLanguage : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => LanguageRes.fromJson(e as Map<String, dynamic>))
          .toList();

      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<GenreRes>>> getGenre() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.genre,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url getGenre : ${ApiUrl.genre}');
    debugPrint('response getGenre : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => GenreRes.fromJson(e as Map<String, dynamic>))
          .toList();

      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<RolesRes>>> getRoles() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.role,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );

    debugPrint('url getRoles : ${ApiUrl.role}');
    debugPrint('response getRoles : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => RolesRes.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<PublishingRes>>> getPublishing() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.publishing,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );

    debugPrint('url getPublishing : ${ApiUrl.publishing}');
    debugPrint('response getPublishing : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => PublishingRes.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<BankRes>>> getBank() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.bank,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );

    debugPrint('url getBank : ${ApiUrl.bank}');
    debugPrint('response getBank : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => BankRes.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<LeaderRes>>> getLabelReq() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    Map<String, dynamic> data = {
      'id': loginRes.id.toString(),
    };

    final response = await WebService().client().get(
          ApiUrl.leader,
          queryParameters: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );

    debugPrint('url getLabelReq : ${ApiUrl.leader}');
    debugPrint('response getLabelReq : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => LeaderRes.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<LabelRes>>> getLabelTransaksi() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    Map<String, dynamic> data = {
      'id': loginRes.id.toString(),
    };

    final response = await WebService().client().get(
          ApiUrl.labelTransaksi,
          queryParameters: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );

    debugPrint('url getLabelTransaksi : ${ApiUrl.labelTransaksi}');
    debugPrint('response getLabelTransaksi : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => LabelRes.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<UserMemberRes>>> getMssgMember() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.mssgMember,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );

    debugPrint('url getMssgMember : ${ApiUrl.mssgMember}');
    debugPrint('response getMssgMember : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => UserMemberRes.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<OnboardingRes>>> getOnboarding() async {
    final response = await WebService().client().get(
          ApiUrl.info,
        );

    debugPrint('url getOnboarding : ${ApiUrl.info}');
    debugPrint('response getOnboarding : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => OnboardingRes.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<PublisherRes>>> getPubliser() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));
    final response = await WebService().client().get(
          ApiUrl.publisher,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );

    debugPrint('url getPubliser : ${ApiUrl.publisher}');
    debugPrint('response getPubliser : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => PublisherRes.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<PlatformRes>>> getPlatform({
    required Map<String, dynamic> paramsData,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));
    final response = await WebService().client().get(
          ApiUrl.platform,
          queryParameters: paramsData,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );

    debugPrint('url getPlatform : ${ApiUrl.platform}');
    debugPrint('response getPlatform : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => PlatformRes.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, List<PlatformRes>>> getPlatformProses({
    required Map<String, dynamic> paramsData,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));
    final response = await WebService().client().get(
          ApiUrl.platformProses,
          queryParameters: paramsData,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );

    debugPrint('url getPlatformProses : ${ApiUrl.platformProses}');
    debugPrint('response getPlatformProses : ${response.data}');

    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => PlatformRes.fromJson(e as Map<String, dynamic>))
          .toList();
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }
}
