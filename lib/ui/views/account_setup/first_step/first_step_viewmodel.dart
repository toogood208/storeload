import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.logger.dart';
import 'package:storeload/ui/utils/validation_manager.dart';
import 'package:storeload/ui/views/account_setup/first_step/first_step_view.form.dart';
import 'package:storeload/ui/views/widgets/otp_dialog.dart';
import 'package:storeload/ui/views/widgets/set_up_dialog_ui.dart';

class FirstStepViewModel extends FormViewModel {
  final _log = getLogger('FirstStepViewModel');
  final _dialogService = locator<DialogService>();
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

  void showBasicDialog() async {
    final response = await _dialogService.showCustomDialog(
      data: OTPDialogStatus.success,
      variant: DialogType.otpDialog,
      mainButtonTitle: "Exit",
    );
  }

  void goToHome() async {
    final response = await _dialogService.showCustomDialog(
      variant: DialogType.emailOtpDialog,
    );
    if (response == null) return;
    response.confirmed ? showBasicDialog() : () {};
  }

  @override
  void setFormStatus() {
    setFirstNameValidationMessage(fieldValidator(value: firstNameValue ?? ""));
    setLastNameValidationMessage(fieldValidator(value: lastNameValue ?? ""));
    setMobileNumberValidationMessage(
        phoneNumberValidator(value: mobileNumberValue ?? ""));
    setEmailValidationMessage(emailValidator(value: emailValue ?? ""));
    setNinNumberValidationMessage(
        ninNumberValidator(value: ninNumberValue ?? ""));
  }
}
