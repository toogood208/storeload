import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';

class NetworkService {
  final snackBar = locator<SnackbarService>();
  Future<Either<void, dynamic>> fmt(Function function) async {
    try {
      return Right(await function.call());
    } on DioError catch (e) {
      if (e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.connectionTimeout) {
        snackBar.showSnackbar(message: "Connection timed out");
      }
      if (e.response == null) {
        snackBar.showSnackbar(message: "Couldn'\t reach the server, please check your internet");
      }
      if(e.response?.statusCode == 503){
        snackBar.showSnackbar(message: "unable to show cart now, please try again later");

      }

      else {
        snackBar.showSnackbar(message: e.response!.data['message']);
      }

      return const Left(null);
    } on SocketException {
      snackBar.showSnackbar(message: "No Internet Connection");
      return const Left(null);
    } catch (e) {
      snackBar.showSnackbar(message: e.toString());
      return const Left(null);
    }
  }
}

extension DioErrorX on DioError {
  bool get isNoConnectionError =>
      type == DioErrorType.unknown && error is SocketException;   // import 'dart:io' for SocketException
}
