import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/validation_manager.dart';
import 'package:storeload/ui/views/authentication/signin/sign_in.form.dart';


class SignInViewModel extends FormViewModel{
  dynamic nameTextColor = kTextColor20;
  dynamic passwordTextColor = kTextColor20;
  String correct = "Correct!";

 
  void submit() {
    if (nameValidationMessage == correct &&
        passwordValidationMessage == correct) {
     
    } else {
     }
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
  @override
  void setFormStatus() {
    setNameValidationMessage(fieldValidator(value: nameValue??""));
    setPasswordValidationMessage(passwordValidator(value:passwordValue ?? ""));


  }
}