String? fieldValidator({String? value, int minimumLength = 1}) {
  if (value == "") {
    return null;
  } else if (value != null && value.length < minimumLength) {
    return "Invalid entry";
  }
  if (value!.length >= minimumLength) {
    return "Correct!";
  }
  return null;
}

String? passwordValidator({String? value, int minimumLength = 8}) {
  if (value == "") {
    return "Field cannot be empty";
  } else if (value != null && value.length < minimumLength) {
    return "Minimum of 8 Characters";
  }
  if (value!.length >= minimumLength) {
    return "Correct!";
  }
  return null;
}

String? emailValidator({String? value}) {
  if (value == "") {
    return "Field cannot be empty";
  } else if (value != null && !value.contains("@")) {
    return "Invalid email";
  }
  if (value!.contains("@")) {
    return "Correct!";
  }
  return null;
}

String? phoneNumberValidator({String? value}) {
  if (value == "") {
    return "Field cannot be empty";
  } else if (value != null && value.length < 11) {
    return "Invalid phone number";
  }
  if (value!.length >= 11) {
    return "Correct!";
  }
  return null;
}

String? ninNumberValidator({String? value}){
  if (value == "") {
    return "Field cannot be empty";
  } else if (value != null && value.length < 11) {
    return "Invalid NIN number";
  }
  if (value!.length >= 11) {
    return "Correct!";
  }
  return null;
}
