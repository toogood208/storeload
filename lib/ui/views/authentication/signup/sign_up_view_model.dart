import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/validation_manager.dart';
import 'package:storeload/ui/views/authentication/signup/sign_up.form.dart';

class SignUpViewModel extends FormViewModel {
  dynamic nameTextColor = kTextColor20;
  dynamic addressTextColor = kTextColor20;
  dynamic lgaTextColor = kTextColor20;
  dynamic passwordTextColor = kTextColor20;
  String correct = "Correct!";

 
  void submit() {
    if (nameValidationMessage == correct &&
        addressValidationMessage == correct &&
        lgaValidationMessage == correct &&
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

  @override
  void setFormStatus() {
    setPasswordValidationMessage(passwordValidator(value: passwordValue ?? ""));
    setAddressValidationMessage(fieldValidator(value: addressValue ?? ""));
    setNameValidationMessage(fieldValidator(value: nameValue ?? ""));
    setLgaValidationMessage(fieldValidator(value: lgaValue ?? ""));
  }
}
