import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.logger.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/constants/app_constant.dart';
import 'package:storeload/core/models/user.dart';
import 'package:storeload/core/services/localstorage/persistent_storage_service.dart';
import 'package:storeload/core/services/localstorage/shared_preference_service.dart';
import 'package:storeload/core/services/network_services/server_services.dart';
import 'package:storeload/core/services/user_data_service/user_data_service.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/validation_manager.dart';
import 'package:storeload/ui/views/account_setup/first_step/first_step_view.form.dart';

import 'package:storeload/ui/views/widgets/otp_dialog.dart';
import 'package:storeload/ui/views/widgets/set_up_dialog_ui.dart';

class FirstStepViewModel extends FormViewModel {
  final _log = getLogger('FirstStepViewModel');
  final _dialogService = locator<DialogService>();
  final _serverService = locator<ServerService>();
  final snackbar = locator<SnackbarService>();
  final _persistentStorageService = locator<PersistentStorageService>();
  final _userDataService = locator<UserDataService>();
  final _navigationService = locator<NavigationService>();
  final _local = locator<SharedPreferencesService>();
  String correct = "Correct!";
  dynamic emailTextColor = kTextColor20;
  dynamic firstNameTextColor = kTextColor20;
  dynamic lastNameTextColor = kTextColor20;
  dynamic mobileNumberTextColor = kTextColor20;
  dynamic ninNumberTextColor = kTextColor20;

  String? token;

  int _currentStep = 1;

  int get currentStep => _currentStep;

  bool _hasFocus = false;

  bool get hasFocus => _hasFocus;
  final List<String> _dropdownItems = [
    'Male',
    'Female',
  ];

  List<String> get dropdownItems => _dropdownItems;

  String? _selectedItem;

  String? get selectedItem => _selectedItem;

  void init() {
    token = _persistentStorageService.userToken;
    _log.v(token);
    notifyListeners();
  }

  void setSelectedItem(String? value) {
    _selectedItem = value;
    _hasFocus = true;
    notifyListeners();
  }

  void saveSelection() {
    _hasFocus = false;
    notifyListeners();
  }

  void changeStep(int step) {
    _log.v('changeStep($step)');
    _currentStep = step;
    notifyListeners();
  }

  void firstNameValidationColor(String? text) {
    if (firstNameValidationMessage == "Correct!") {
      firstNameTextColor = kSuccessTextColor;
    } else {
      firstNameTextColor = kErrorTextColor;
    }
  }

  void lastNameValidationColor(String? text) {
    if (lastNameValidationMessage == "Correct!") {
      lastNameTextColor = kSuccessTextColor;
    } else {
      lastNameTextColor = kErrorTextColor;
    }
  }

  void emailValidationColor(String? text) {
    if (emailValidationMessage == "Correct!") {
      emailTextColor = kSuccessTextColor;
    } else {
      emailTextColor = kErrorTextColor;
    }
  }

  void ninNumberValidationColor(String? text) {
    if (ninValidationMessage == "Correct!") {
      ninNumberTextColor = kSuccessTextColor;
    } else {
      ninNumberTextColor = kErrorTextColor;
    }
  }

  void mobileNumberValidationColor(String? text) {
    if (mobileNumberValidationMessage == "Correct!") {
      mobileNumberTextColor = kSuccessTextColor;
    } else {
      mobileNumberTextColor = kErrorTextColor;
    }
  }

  void showBasicDialog({required bool status}) async {
    final response = await _dialogService.showCustomDialog(
      data: status ? OTPDialogStatus.success : OTPDialogStatus.failure,
      variant: DialogType.otpDialog,
      mainButtonTitle: "Exit",
    );
    if (response == null) return;
    if (response.confirmed && status) {
      Data user = _userDataService.user;
      user.firstName = firstNameValue;
      user.lastName = lastNameValue;
      user.email = emailValue;
      user.gender = selectedItem;
      user.nin = ninValue;
      _userDataService.setUser(user: user);
      notifyListeners();
      _log.v("Exit");
      navigateToHomeScreenView();
    }
  }

  void navigateToHomeScreenView() {
    _navigationService.clearStackAndShow(Routes.homeScreenView);
  }

  void showEmailDialog(String token) async {
    final response = await _dialogService.showCustomDialog(
        variant: DialogType.emailOtpDialog,
        barrierDismissible: true,
        data: {
          'email': emailValue,
        });
    if (response == null) return;
    showBasicDialog(status: response.confirmed);
  }

  Future updateUserAccount() async {
    final token = await _local.getData(AppConstant.token);
    setBusy(true);
    final response = await _serverService.userAccountSetup(
      firstName: firstNameValue,
      lastName: lastNameValue,
      email: emailValue,
      gender: selectedItem,
      nin: ninValue,
      token: token,
    );
    if (response == null || response['status'] == false) {
      snackbar.showSnackbar(message: "Something went wrong");
      setBusy(false);
    }
    if (response != null && response['status'] == true) {
      showEmailDialog(token);
      setBusy(false);
    }
  }

  void goToHome() async {
    final token = await _local.getData(AppConstant.token);

    if (emailValidationMessage != correct ||
        firstNameValidationMessage != correct ||
        lastNameValidationMessage != correct ||
        mobileNumberValidationMessage != correct ||
        ninValidationMessage != correct ||
        selectedItem == null) return;

    showEmailDialog(token);
    updateUserAccount();
  }

  @override
  void setFormStatus() {
    setFirstNameValidationMessage(
        fieldValidator(minimumLength: 2, value: firstNameValue ?? ""));
    setLastNameValidationMessage(
        fieldValidator(minimumLength: 2, value: lastNameValue ?? ""));
    setMobileNumberValidationMessage(
        phoneNumberValidator(value: mobileNumberValue ?? ""));
    setEmailValidationMessage(emailValidator(value: emailValue ?? ""));
    setNinValidationMessage(ninNumberValidator(value: ninValue ?? ""));
  }
}
