import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/models/leader/leader_res.dart';
import 'package:yboxv2/network/api_interceptor.dart';
import 'package:yboxv2/network/api_url.dart';

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
}
