import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/validation_manager.dart';
import 'package:storeload/ui/views/account_setup/first_step/first_step_view.form.dart';
import 'package:storeload/ui/views/authentication/reset_email_password/reset_email_password.form.dart';

import '../../../../app/app.locator.dart';
import '../../../../core/services/network_services/server_services.dart';

class ResetEmailPasswordViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _serverService = locator<ServerService>();
  dynamic emailTextColor = kTextColor20;
  String correct = "Correct!";

  Future<void> resendPasswordEmail() async {
    setBusy(true);
    final response = await _serverService.resetPasswordEmail(nameValue);
    if (response) navigateToForgetPassword();
    setBusy(false);
  }

  void emailPasswordValidationColor(String? text) {
    if (emailValidationMessage == "Correct!") {
      emailTextColor = kSuccessTextColor;
    } else {
      emailTextColor = kErrorTextColor;
    }
  }

  void navigateToForgetPassword() =>
      _navigationService.clearStackAndShow(Routes.forgotPassword);

  @override
  void setFormStatus() {
    setEmailValidationMessage(emailValidator(value: nameValue ?? ""));
  }
}
