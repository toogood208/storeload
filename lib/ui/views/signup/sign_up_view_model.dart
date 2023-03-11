import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/validation_manager.dart';
import 'package:storeload/ui/views/signup/sign_up.form.dart';

class SignUpViewModel extends FormViewModel{
  @override
  void setFormStatus() {
  setNameValidationMessage(fieldValidator(value: nameValue ?? ""));
  setAddressValidationMessage(fieldValidator(value: addressValue ?? ""));
  setLgaValidationMessage(fieldValidator(value: lgaValue ?? ""));
  setPasswordValidationMessage(passwordValidator(value: passwordValue ?? ""));

  }
}