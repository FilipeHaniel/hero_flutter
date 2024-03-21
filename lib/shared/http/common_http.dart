import 'package:hero_flutter/shared/http/common_response.dart';
import 'package:hero_flutter/shared/http/core_http.dart';

import 'package:dio/dio.dart';

class CommonHttp implements CoreHttp {
  late Dio dio;

  CommonHttp({required String baseUrl}) {
    dio = Dio();
    dio.options.baseUrl = baseUrl;
  }

  @override
  void addHeader(String key, String value) {
    dio.options.headers[key] = value;
  }

  @override
  Future<CommonResponse> get({required String route, queryParameters}) async {
    final response = await dio.get(
      route,
      queryParameters: queryParameters,
    );

    return CommonResponse(
      statusCode: response.statusCode,
      data: response.data,
      headers: dio.options.headers,
    );
  }

  @override
  Future<CommonResponse> post(
      {required String route, body, queryParameters}) async {
    var response = await dio.post(
      route,
      data: body,
    );

    return CommonResponse(
      statusCode: response.statusCode,
      data: response.data,
      headers: dio.options.headers,
    );
  }

  @override
  Future<CommonResponse> put(
      {required String route, body, queryParameters}) async {
    var response = await dio.post(
      route,
      data: body,
    );

    return CommonResponse(
      statusCode: response.statusCode,
      data: response.data,
      headers: dio.options.headers,
    );
  }

  @override
  Future<CommonResponse> delete(
      {required String route, body, queryParameters}) async {
    var response = await dio.delete(
      route,
      data: body,
      queryParameters: queryParameters,
    );

    return CommonResponse(
      statusCode: response.statusCode,
      data: response.data,
      headers: dio.options.headers,
    );
  }
}
