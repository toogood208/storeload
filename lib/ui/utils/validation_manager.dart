String? fieldValidator({String? value, int minimumLength = 1}) {
  if (value == "") {
    return null;
  } else if (value != null && value.length < minimumLength) {
    return "Invalid tool name, must have at least one character";
  }
  return null;
}

String? passwordValidator({String? value, int minimumLength = 8}) {
  if (value == "") {
    return null;
  } else if (value != null && value.length < minimumLength) {
    return "Minimum of 8 Characters";
  }
  return null;
}
