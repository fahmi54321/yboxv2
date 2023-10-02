import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/models/invoice/invoice_res.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/models/transaction/transaction_res.dart';
import 'package:yboxv2/network/api_interceptor.dart';
import 'package:yboxv2/network/api_url.dart';
import 'package:yboxv2/utils/shared_pref.dart';

class HTTPTransactionService {
  Future<Either<String, int>> uploadTransaction({
    required FormData data,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().post(
          ApiUrl.transaksi,
          data: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
            'Accept': 'application/json',
          }),
        );

    debugPrint('url uploadTransaction : ${ApiUrl.transaksi}');
    debugPrint('response uploadTransaction : ${response.data}');

    if (response.statusCode == 200) {
      return Right(response.statusCode ?? 0);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, TransactionRes>> getTransaction({
    required int page,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.transaksi,
          queryParameters: {
            'page': page,
            'id': loginRes.id.toString(),
          },
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url getTransaction : ${ApiUrl.transaksi}');
    debugPrint('response getTransaction : ${response.data}');

    if (response.statusCode == 200) {
      final result = TransactionRes.fromJson(
          response.data['data'] as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, DataTransactionRes>> detailsTransaction({
    required String id,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.transaksi,
          data: {
            'id': id,
          },
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url detailsTransaction : ${ApiUrl.transaksi + id}');
    debugPrint('response detailsTransaction : ${response.data}');

    if (response.statusCode == 200) {
      final result =
          DataTransactionRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, InvoiceRes>> invoice({
    required String id,
  }) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    final response = await WebService().client().get(
          ApiUrl.invoice,
          data: {
            'id': id,
          },
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );
    debugPrint('url invoice : ${ApiUrl.invoice + id}');
    debugPrint('response invoice : ${response.data}');

    if (response.statusCode == 200) {
      final result = InvoiceRes.fromJson(response.data as Map<String, dynamic>);
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }

  Future<Either<String, int>> cekReq() async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    Map<String, dynamic> data = {
      'id': loginRes.id.toString(),
    };

    final response = await WebService().client().get(
          ApiUrl.cekReq,
          queryParameters: data,
          options: Options(headers: {
            'Authorization': 'Bearer ${loginRes.accessToken}',
          }),
        );

    debugPrint('response cekReq : ${response.data}');
    debugPrint('url cekReq : ${ApiUrl.cekReq}${loginRes.id}');

    if (response.statusCode == 200) {
      int result = response.data['count'];
      return Right(result);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }
}
