// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String NameValueKey = 'name';
const String AddressValueKey = 'address';
const String LgaValueKey = 'lga';
const String PasswordValueKey = 'password';

final Map<String, TextEditingController> _SignUPTextEditingControllers = {};

final Map<String, FocusNode> _SignUPFocusNodes = {};

final Map<String, String? Function(String?)?> _SignUPTextValidations = {
  NameValueKey: null,
  AddressValueKey: null,
  LgaValueKey: null,
  PasswordValueKey: null,
};

mixin $SignUP {
  TextEditingController get nameController =>
      _getFormTextEditingController(NameValueKey);
  TextEditingController get addressController =>
      _getFormTextEditingController(AddressValueKey);
  TextEditingController get LGAController =>
      _getFormTextEditingController(LgaValueKey);
  TextEditingController get passwordController =>
      _getFormTextEditingController(PasswordValueKey);
  FocusNode get nameFocusNode => _getFormFocusNode(NameValueKey);
  FocusNode get addressFocusNode => _getFormFocusNode(AddressValueKey);
  FocusNode get LGAFocusNode => _getFormFocusNode(LgaValueKey);
  FocusNode get passwordFocusNode => _getFormFocusNode(PasswordValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_SignUPTextEditingControllers.containsKey(key)) {
      return _SignUPTextEditingControllers[key]!;
    }

    _SignUPTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _SignUPTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_SignUPFocusNodes.containsKey(key)) {
      return _SignUPFocusNodes[key]!;
    }
    _SignUPFocusNodes[key] = FocusNode();
    return _SignUPFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormViewModel model) {
    nameController.addListener(() => _updateFormData(model));
    addressController.addListener(() => _updateFormData(model));
    LGAController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    nameController.addListener(() => _updateFormData(model));
    addressController.addListener(() => _updateFormData(model));
    LGAController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
  }

  static const bool _autoTextFieldValidation = true;
  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          NameValueKey: nameController.text,
          AddressValueKey: addressController.text,
          LgaValueKey: LGAController.text,
          PasswordValueKey: passwordController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _SignUPTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _SignUPFocusNodes.values) {
      focusNode.dispose();
    }

    _SignUPTextEditingControllers.clear();
    _SignUPFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get nameValue => this.formValueMap[NameValueKey] as String?;
  String? get addressValue => this.formValueMap[AddressValueKey] as String?;
  String? get lgaValue => this.formValueMap[LgaValueKey] as String?;
  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;

  set nameValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          NameValueKey: value,
        }),
    );

    if (_SignUPTextEditingControllers.containsKey(NameValueKey)) {
      _SignUPTextEditingControllers[NameValueKey]?.text = value ?? '';
    }
  }

  set addressValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          AddressValueKey: value,
        }),
    );

    if (_SignUPTextEditingControllers.containsKey(AddressValueKey)) {
      _SignUPTextEditingControllers[AddressValueKey]?.text = value ?? '';
    }
  }

  set lgaValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          LgaValueKey: value,
        }),
    );

    if (_SignUPTextEditingControllers.containsKey(LgaValueKey)) {
      _SignUPTextEditingControllers[LgaValueKey]?.text = value ?? '';
    }
  }

  set passwordValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          PasswordValueKey: value,
        }),
    );

    if (_SignUPTextEditingControllers.containsKey(PasswordValueKey)) {
      _SignUPTextEditingControllers[PasswordValueKey]?.text = value ?? '';
    }
  }

  bool get hasName =>
      this.formValueMap.containsKey(NameValueKey) &&
      (nameValue?.isNotEmpty ?? false);
  bool get hasAddress =>
      this.formValueMap.containsKey(AddressValueKey) &&
      (addressValue?.isNotEmpty ?? false);
  bool get hasLga =>
      this.formValueMap.containsKey(LgaValueKey) &&
      (lgaValue?.isNotEmpty ?? false);
  bool get hasPassword =>
      this.formValueMap.containsKey(PasswordValueKey) &&
      (passwordValue?.isNotEmpty ?? false);

  bool get hasNameValidationMessage =>
      this.fieldsValidationMessages[NameValueKey]?.isNotEmpty ?? false;
  bool get hasAddressValidationMessage =>
      this.fieldsValidationMessages[AddressValueKey]?.isNotEmpty ?? false;
  bool get hasLgaValidationMessage =>
      this.fieldsValidationMessages[LgaValueKey]?.isNotEmpty ?? false;
  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;

  String? get nameValidationMessage =>
      this.fieldsValidationMessages[NameValueKey];
  String? get addressValidationMessage =>
      this.fieldsValidationMessages[AddressValueKey];
  String? get lgaValidationMessage =>
      this.fieldsValidationMessages[LgaValueKey];
  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
}

extension Methods on FormViewModel {
  setNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NameValueKey] = validationMessage;
  setAddressValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[AddressValueKey] = validationMessage;
  setLgaValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LgaValueKey] = validationMessage;
  setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    nameValue = '';
    addressValue = '';
    lgaValue = '';
    passwordValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      NameValueKey: getValidationMessage(NameValueKey),
      AddressValueKey: getValidationMessage(AddressValueKey),
      LgaValueKey: getValidationMessage(LgaValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _SignUPTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _SignUPTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormViewModel model) => model.setValidationMessages({
      NameValueKey: getValidationMessage(NameValueKey),
      AddressValueKey: getValidationMessage(AddressValueKey),
      LgaValueKey: getValidationMessage(LgaValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
    });
