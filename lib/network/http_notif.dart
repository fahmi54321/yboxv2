import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/network/api_interceptor.dart';
import 'package:yboxv2/network/api_url.dart';

class HTTPNotifService {
  Future<Either<String, bool>> sendNotif({
    required Map<String, dynamic> paramsData,
  }) async {
    final response = await WebService().client().post(
          ApiUrl.sendNotif,
          data: paramsData,
          options: Options(headers: {
            'Authorization':
                'key=AAAAOLAdEKw:APA91bFz0D8jcp-nyIKmOzE47CTJyd5V7Cmfe55QsYke6gJkNT_aoVC9Pb5MvSmu6H3BWP2GgrNYzeBsac9Er_dFXJnW2g7jQFtnF7vJoRSY3GaFk8gLNYGEFmk1iSIi7F597D7w30qz',
            'Content-Type': 'application/json',
          }),
        );
    debugPrint('url sendNotif : ${ApiUrl.sendNotif}');
    debugPrint('response sendNotif : ${response.data}');

    if (response.statusCode == 200) {
      return const Right(true);
    } else {
      return const Left('Terjadi kesalahan');
    }
  }
}
