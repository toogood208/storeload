import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';

class NetworkService {
  final snackbar = locator<SnackbarService>();
  Future<Either<void, dynamic>> fmt(Function function) async {
    try {
      return Right(await function.call());
    } on DioError catch (e) {
      if (e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.connectionTimeout) {
        snackbar.showSnackbar(message: "Connection timed out");
      }
      if (e.response == null) {
        snackbar.showSnackbar(message: "Couldn'\t reach the server, please check your internet");
      } else {
        snackbar.showSnackbar(message: e.response!.data['message']);
      }

      return const Left(null);
    } on SocketException {
      snackbar.showSnackbar(message: "No Internet Connection");
      return const Left(null);
    } catch (e) {
      snackbar.showSnackbar(message: e.toString());
      return const Left(null);
    }
  }
}

extension DioErrorX on DioError {
  bool get isNoConnectionError =>
      type == DioErrorType.unknown && error is SocketException;   // import 'dart:io' for SocketException
}
