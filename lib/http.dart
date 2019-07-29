import 'dart:core';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:vendors_finder/models/user.dart';

String link = 'http://104.248.17.10/api';

dynamic getHttp(path, {token, params}) async {
  try {
    Response response = await Dio().get(
      '$link$path',
      queryParameters: params,
      options: Options(
        headers: {
          HttpHeaders.authorizationHeader:
              'Bearer $token', // set content-length
        },
      ),
    );
    print('$link$path -  returned - $response');
    return response.data;
  } catch (e) {
    print(e);
  }
}

dynamic postHttp(path, {data, token, params}) async {
  try {
    print('attempt $link$path -  on data - $data - on params - $params');
    Response response = await Dio()
        .post(
      '$link$path',
      data: data,
      queryParameters: params,
      options: Options(
        headers: {
          HttpHeaders.authorizationHeader:
              'Bearer $token', // set content-length
        },
      ),
    )
        .catchError((onERR) {
      print(onERR);
    });

    print('$link -  returned - $response');
    return response.data;
  } catch (e) {
    print(e);
  }
}
