import 'dart:async';

import 'package:stacked/stacked.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.logger.dart';

import '../../../../core/services/network_services/server_services.dart';

class EmailOtpDialogViewModel extends BaseViewModel {
  final _log = getLogger("EmailOtpDialogViewModel");
  final _serverService = locator<ServerService>();

  String? otpValue;

  String minutes = "";
  String second = "";
  String strDigits(int n) => n.toString().padLeft(2, '0');

  Timer? countdownTimer;
  Duration myDuration = const Duration(minutes: 3);

  void startTimer() {
    _log.v("working");
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void setCountDown() {
    const reduceSecondsBy = 1;
    final seconds = myDuration.inSeconds - reduceSecondsBy;
    minutes = strDigits(myDuration.inMinutes.remainder(60));
    second = strDigits(myDuration.inSeconds.remainder(60));
    if (seconds < 0) {
      countdownTimer!.cancel();
      notifyListeners();
    } else {
      myDuration = Duration(seconds: seconds);
      notifyListeners();
    }
    _log.v(seconds);

    notifyListeners();
  }

  // Step 4
  void stopTimer() {
    countdownTimer!.cancel();
    notifyListeners();
  }

  // Step 5
  void resetTimer() {
    stopTimer();
    myDuration = const Duration(minutes: 3);
    startTimer();
    _log.v(minutes);
    notifyListeners();
  }

  Future getOTP() async {
    setBusy(true);
    await Future.delayed(const Duration(seconds: 5), () => resetTimer());
    setBusy(false);
  }

  void setOtpValue(String value) {
    otpValue = value;
    _log.v(value);
    notifyListeners();
  }

  Future<bool> verifyOtp(String value, {required String token}) async {
    _log.v(value);
   return await emailOtpVerification(otp: value, token: token);
  }

  Future emailOtpVerification(
      {required String otp, required String token}) async {
    setBusy(true);
    final response =
        await _serverService.emailOtpVerification(otp: otp, token: token);
    _log.v(response['status']);
    if (response == null) {
      setBusy(false);
      return false;
    }
    if (response != null) {
      setBusy(false);
      return response['status'];
    }
  }
}
