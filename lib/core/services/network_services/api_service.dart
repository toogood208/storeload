import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:storeload/app/app.logger.dart';
import 'package:storeload/core/services/network_services/network_constant.dart';

class APIService {
  final log = getLogger("APIService");
  late Dio dio;
  APIService() {
    dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(minutes: 3),
        receiveTimeout: const Duration(minutes: 3),
        baseUrl: baseUrl,
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
  }

  Future<dynamic> delete(
    String route,
    Map<String, List>? body,
  ) async {
    log.v("getting data fro $route");
    var response = await dio.patch(
      route,
      data: jsonEncode(body),
    );
    log.v("the data fro $route is ${response.data}");
    return response.data;
  }

  Future<dynamic> get({
    required String route,
    Map<String, String>? queryParameters,
  }) async {
    log.v("getting data fro $route");
    var response = await dio.get(route, queryParameters: queryParameters);
    log.v("the data fro $route is ${response.data}");
    return response.data;
  }

  Future<dynamic> patch(
    String route,
    Map<String, String> body,
  ) async {
    log.v("getting data fro $route");
    var response = await dio.patch(
      route,
      data: body,
    );
    log.v("the data fro $route is ${response.data}");
    return response.data;
  }

  Future<dynamic> post({
    required String route,
    required Map<String, dynamic> body,
    String? bearerToken,
  }) async {
    log.v("posting $body fro $route");
    var response = await dio.post(route,
        data: body,
        options: Options(
          headers: {
            'Authorization': 'Bearer $bearerToken',
            'Content-type': 'application/json',
            'Accept': 'application/json',
          },
        ));

    log.v("posting ${response.data} fro $route");
    return response.data;
  }

  Future<dynamic> put(
    String route,
    Map<String, String> body, {
    required String bearerToken,
  }) async {
    log.v("getting data fro $route");
    var response = await dio.put(
      route,
      data: body,
      options: Options(
        headers: {
          'Authorization': 'Bearer $bearerToken',
          'Content-type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
    log.v("the data fro $route is ${response.data}");
    return response.data;
  }
}
