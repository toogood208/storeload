import 'dart:async';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.logger.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/services/network_services/server_services.dart';

import 'package:storeload/ui/views/widgets/otp_dialog.dart';
import 'package:storeload/ui/views/widgets/set_up_dialog_ui.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  final _dialog = locator<DialogService>();
  final _log = getLogger("ForgotPasswordViewModel");
  final _serverService = locator<ServerService>();
  final _navigationService = locator<NavigationService>();

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

  Future<void> resendPasswordEmail(String email) async {
    setBusy(true);
    final response = await _serverService.resetPasswordEmail(email);
    _log.v(response);
    setBusy(false);
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

  Future getOTP(String email) async {
    setBusy(true);
    await Future.delayed(const Duration(seconds: 1), () {
      resetTimer();
      resendPasswordEmail(email);
    });
    setBusy(false);
  }

  Future<void> submit(String otp) async {
    setBusy(true);
    final response =
        await _serverService.emailOtpVerificationForgotPassord(otp: otp);
    String? userId = response?.data.id;
    if (response!.status && userId != null) navigateToResetPassword(userId);
    _log.v(userId);
    setBusy(false);
  }

  Future showBasicDialog() async {
    final response = await _dialog.showCustomDialog(
        data: OTPDialogStatus.success,
        variant: DialogType.otpDialog,
        secondaryButtonTitle: "Exit",
        mainButtonTitle: "Retry");
    _log.v(response?.confirmed);
  }

  void navigateToResetPassword(String userId) {
    _navigationService.navigateTo(Routes.resetPaswword,
    arguments: ResetPaswwordArguments(userId: userId));
  }
}
