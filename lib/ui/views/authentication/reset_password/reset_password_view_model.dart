import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/services/network_services/server_services.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/validation_manager.dart';
import 'package:storeload/ui/views/authentication/signin/sign_in.form.dart';

class ResetPasswordViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _serverService = locator<ServerService>();
  dynamic passwordTextColor = kTextColor20;
  String correct = "Correct!";

  void passwordValidationColor(String? text) {
    if (passwordValidationMessage == "Correct!") {
      passwordTextColor = kSuccessTextColor;
    } else {
      passwordTextColor = kErrorTextColor;
    }
  }

  Future<void> newResetPassword(String userId) async {
    setBusy(true);
    final response = await _serverService.newResetPassword(
        userId: userId, password: passwordValue);
    if (response) navigateToSignin();
    setBusy(false);
  }

  Future<void> submit(String userId) async {
    if (nameValidationMessage == correct) {
      await newResetPassword(userId);
    }
  }

  @override
  void setFormStatus() {
    setPasswordValidationMessage(passwordValidator(value: passwordValue ?? ""));
  }

  void navigateToSignin() {
    _navigationService.clearStackAndShow(Routes.signIN);
  }
}
