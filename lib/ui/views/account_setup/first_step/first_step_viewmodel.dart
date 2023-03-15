import 'package:stacked/stacked.dart';
import 'package:storeload/app/app.logger.dart';
import 'package:storeload/ui/utils/validation_manager.dart';
import 'package:storeload/ui/views/account_setup/first_step/first_step_view.form.dart';

class FirstStepViewModel extends FormViewModel {
  final _log = getLogger('FirstStepViewModel');
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


  @override
  void setFormStatus() {
    setFirstNameValidationMessage(fieldValidator(value: firstNameValue ?? ""));
    setLastNameValidationMessage(fieldValidator(value: lastNameValue ?? ""));
    setMobileNumberValidationMessage(phoneNumberValidator(value: mobileNumberValue ?? ""));
    setEmailValidationMessage(emailValidator(value: emailValue ?? ""));
    setNinNumberValidationMessage(ninNumberValidator(value: ninNumberValue ?? ""));
  } 
}
