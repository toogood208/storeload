import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.logger.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/constants/app_constant.dart';
import 'package:storeload/core/models/user.dart';

import 'package:storeload/core/services/localstorage/shared_preference_service.dart';
import 'package:storeload/core/services/network_services/server_services.dart';
import 'package:storeload/core/services/user_data_service/user_data_service.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/validation_manager.dart';
import 'package:storeload/ui/views/authentication/signin/sign_in.form.dart';

class SignInViewModel extends FormViewModel {
  final _serverService = locator<ServerService>();
  final _navigationService = locator<NavigationService>();

  final _userDataService = locator<UserDataService>();
  final _sharedPreferenceService = locator<SharedPreferencesService>();
  final _logger = getLogger("SignUPViewModel");
  dynamic nameTextColor = kTextColor20;
  dynamic passwordTextColor = kTextColor20;
  String correct = "Correct!";

  // sign in user
  Future<void> signInUser() async {
    setBusy(true);
    final response = await _serverService.loginUser(
        shopName: nameValue, password: passwordValue);

    if (response != null && response.status) {
      bool isEmailVerified = response.data.isEmailVerified ?? false;
      String token = response.data.token;
      //set user data
      _userDataService.setUser(user: response.data);
      _sharedPreferenceService.saveData(AppConstant.user, userToJson(response));
      // notifyListeners();
      _logger.v(isEmailVerified);
      _logger.v(token);
      if (isEmailVerified) {
        navigateToHomeScreenView();
      } else {
        _sharedPreferenceService.saveData(AppConstant.token, token);
        navigateToAccountSetup();
      }
    }
    setBusy(false);
  }

  // submit form
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

  void navigateToHomeScreenView() =>
      _navigationService.replaceWith(Routes.homeScreenView);

  void navigateToAccountSetup() {
    _navigationService.clearStackAndShow(Routes.firstStepView);
    _sharedPreferenceService.saveData(AppConstant.userLoggedIN, true);
  }

  void navigateToSignUp() =>
      _navigationService.clearStackAndShow(Routes.signUP);

  @override
  void setFormStatus() {
    setNameValidationMessage(fieldValidator(value: nameValue ?? ""));
    setPasswordValidationMessage(passwordValidator(value: passwordValue ?? ""));
  }
}
