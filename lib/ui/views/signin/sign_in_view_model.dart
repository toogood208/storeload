import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/validation_manager.dart';
import 'package:storeload/ui/views/signin/sign_in.form.dart';


class SignInViewModel extends FormViewModel{
  @override
  void setFormStatus() {
    setNameValidationMessage(fieldValidator(value: nameValue??""));
    setPasswordValidationMessage(passwordValidator(value:passwordValue ?? ""));


  }
}