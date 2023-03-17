import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.logger.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/services/network_services/server_services.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/validation_manager.dart';
import 'package:storeload/ui/views/authentication/signup/sign_up.form.dart';

class SignUpViewModel extends FormViewModel {
  final _serverService = locator<ServerService>();
  final _navigationService = locator<NavigationService>();
  final _logger = getLogger("SignUPViewModel");
  dynamic nameTextColor = kTextColor20;
  dynamic addressTextColor = kTextColor20;
  dynamic lgaTextColor = kTextColor20;
  dynamic passwordTextColor = kTextColor20;
  String correct = "Correct!";

  Future<void> createUser() async {
    setBusy(true);
    final response = await _serverService.createUser(
        shopName: nameValue,
        shopAddress: addressValue,
        shopLGA: lgaValue,
        password: passwordValue);
    if (response) navigateToSetUP();
    setBusy(false);
  }

  Future<void> submit() async {
    if (nameValidationMessage == correct &&
        addressValidationMessage == correct &&
        lgaValidationMessage == correct &&
        passwordValidationMessage == correct) {
      await createUser();
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

  void addressValidationColor(String? text) {
    if (addressValidationMessage == "Correct!") {
      addressTextColor = kSuccessTextColor;
    } else {
      addressTextColor = kErrorTextColor;
    }
  }

  void lgaValidationColor(String? text) {
    if (lgaValidationMessage == "Correct!") {
      lgaTextColor = kSuccessTextColor;
    } else {
      lgaTextColor = kErrorTextColor;
    }
  }

  void passwordValidationColor(String? text) {
    if (passwordValidationMessage == "Correct!") {
      passwordTextColor = kSuccessTextColor;
    } else {
      passwordTextColor = kErrorTextColor;
    }
  }

  void navigateToSetUP() =>
      _navigationService.clearStackAndShow(Routes.firstStepView);

  void navigateToSignIN() =>
      _navigationService.clearStackAndShow(Routes.signIN);

  @override
  void setFormStatus() {
    setPasswordValidationMessage(passwordValidator(value: passwordValue ?? ""));
    setAddressValidationMessage(fieldValidator(value: addressValue ?? ""));
    setNameValidationMessage(fieldValidator(value: nameValue ?? ""));
    setLgaValidationMessage(fieldValidator(value: lgaValue ?? ""));
  }
}
