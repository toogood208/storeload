import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.logger.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/services/network_services/server_services.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/validation_manager.dart';
import 'package:storeload/ui/views/authentication/signin/sign_in.form.dart';

class SignInViewModel extends FormViewModel {
  final _serverService = locator<ServerService>();
  final _navigationService = locator<NavigationService>();
  final _logger = getLogger("SignUPViewModel");
  dynamic nameTextColor = kTextColor20;
  dynamic passwordTextColor = kTextColor20;
  String correct = "Correct!";

  Future<void> signInUser() async {
    setBusy(true);
    final response = await _serverService.loginUser(
        shopName: nameValue, password: passwordValue);

    if (response != null && response.status) {
      bool isEmailVerified = response.data.user.isEmailVerified;
      String token = response.data.token;
      _logger.v(isEmailVerified);
      if (isEmailVerified) {
        navigateToForgetPassword();
      } else {
        navigateToAccountSetup(token:token );
      }
    }
    setBusy(false);
  }

  Future<void> submit() async {
    if (nameValidationMessage == correct &&
        passwordValidationMessage == correct) {
      await signInUser();
    }
    _logger.v("De Play");
  }

  void nameValidationColor(String? text) {
    if (nameValidationMessage == "Correct!") {
      nameTextColor = kSuccessTextColor;
    } else {
      nameTextColor = kErrorTextColor;
    }
  }

  void passwordValidationColor(String? text) {
    if (passwordValidationMessage == "Correct!") {
      passwordTextColor = kSuccessTextColor;
    } else {
      passwordTextColor = kErrorTextColor;
    }
  }

  void navigateToForgetPassword() =>
      _navigationService.clearStackAndShow(Routes.forgotPassword);

  void navigateToAccountSetup({required String token}) => _navigationService.clearStackAndShow(
        Routes.firstStepView,
        arguments: FirstStepViewArguments(
          token: token
        )
      );

  void navigateToSignUp() =>
      _navigationService.clearStackAndShow(Routes.signUP);
  @override
  void setFormStatus() {
    setNameValidationMessage(fieldValidator(value: nameValue ?? ""));
    setPasswordValidationMessage(passwordValidator(value: passwordValue ?? ""));
  }
}
