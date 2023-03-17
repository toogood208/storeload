
import 'package:stacked/stacked.dart';
import 'package:storeload/app/app.logger.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/validation_manager.dart';
import 'package:storeload/ui/views/authentication/signin/sign_in.form.dart';

class ResetPasswordViewModel extends FormViewModel {
  final _log = getLogger("ResetPasswordViewModel");
  dynamic passwordTextColor = kTextColor20;
  String correct = "Correct!";

  void passwordValidationColor(String? text) {
    if (passwordValidationMessage == "Correct!") {
      passwordTextColor = kSuccessTextColor;
     
    } else {
      passwordTextColor = kErrorTextColor;
    }
  }
  
  

 
  
  @override
  void setFormStatus() {
    setPasswordValidationMessage(passwordValidator(value:passwordValue ?? ""));
  }
}
