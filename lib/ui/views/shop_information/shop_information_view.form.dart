// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String NameValueKey = 'name';
const String AddressValueKey = 'address';
const String NumberValueKey = 'number';
const String PasswordValueKey = 'password';
const String EmailValueKey = 'email';

final Map<String, TextEditingController>
    _ShopInformationViewTextEditingControllers = {};

final Map<String, FocusNode> _ShopInformationViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _ShopInformationViewTextValidations = {
  NameValueKey: null,
  AddressValueKey: null,
  NumberValueKey: null,
  PasswordValueKey: null,
  EmailValueKey: null,
};

mixin $ShopInformationView {
  TextEditingController get nameController =>
      _getFormTextEditingController(NameValueKey);
  TextEditingController get addressController =>
      _getFormTextEditingController(AddressValueKey);
  TextEditingController get numberController =>
      _getFormTextEditingController(NumberValueKey);
  TextEditingController get passwordController =>
      _getFormTextEditingController(PasswordValueKey);
  TextEditingController get emailController =>
      _getFormTextEditingController(EmailValueKey);
  FocusNode get nameFocusNode => _getFormFocusNode(NameValueKey);
  FocusNode get addressFocusNode => _getFormFocusNode(AddressValueKey);
  FocusNode get numberFocusNode => _getFormFocusNode(NumberValueKey);
  FocusNode get passwordFocusNode => _getFormFocusNode(PasswordValueKey);
  FocusNode get emailFocusNode => _getFormFocusNode(EmailValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_ShopInformationViewTextEditingControllers.containsKey(key)) {
      return _ShopInformationViewTextEditingControllers[key]!;
    }

    _ShopInformationViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _ShopInformationViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_ShopInformationViewFocusNodes.containsKey(key)) {
      return _ShopInformationViewFocusNodes[key]!;
    }
    _ShopInformationViewFocusNodes[key] = FocusNode();
    return _ShopInformationViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormViewModel model) {
    nameController.addListener(() => _updateFormData(model));
    addressController.addListener(() => _updateFormData(model));
    numberController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
    emailController.addListener(() => _updateFormData(model));
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
    numberController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
    emailController.addListener(() => _updateFormData(model));
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
          NumberValueKey: numberController.text,
          PasswordValueKey: passwordController.text,
          EmailValueKey: emailController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _ShopInformationViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _ShopInformationViewFocusNodes.values) {
      focusNode.dispose();
    }

    _ShopInformationViewTextEditingControllers.clear();
    _ShopInformationViewFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get nameValue => this.formValueMap[NameValueKey] as String?;
  String? get addressValue => this.formValueMap[AddressValueKey] as String?;
  String? get numberValue => this.formValueMap[NumberValueKey] as String?;
  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;
  String? get emailValue => this.formValueMap[EmailValueKey] as String?;

  set nameValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          NameValueKey: value,
        }),
    );

    if (_ShopInformationViewTextEditingControllers.containsKey(NameValueKey)) {
      _ShopInformationViewTextEditingControllers[NameValueKey]?.text =
          value ?? '';
    }
  }

  set addressValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          AddressValueKey: value,
        }),
    );

    if (_ShopInformationViewTextEditingControllers.containsKey(
        AddressValueKey)) {
      _ShopInformationViewTextEditingControllers[AddressValueKey]?.text =
          value ?? '';
    }
  }

  set numberValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          NumberValueKey: value,
        }),
    );

    if (_ShopInformationViewTextEditingControllers.containsKey(
        NumberValueKey)) {
      _ShopInformationViewTextEditingControllers[NumberValueKey]?.text =
          value ?? '';
    }
  }

  set passwordValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          PasswordValueKey: value,
        }),
    );

    if (_ShopInformationViewTextEditingControllers.containsKey(
        PasswordValueKey)) {
      _ShopInformationViewTextEditingControllers[PasswordValueKey]?.text =
          value ?? '';
    }
  }

  set emailValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          EmailValueKey: value,
        }),
    );

    if (_ShopInformationViewTextEditingControllers.containsKey(EmailValueKey)) {
      _ShopInformationViewTextEditingControllers[EmailValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasName =>
      this.formValueMap.containsKey(NameValueKey) &&
      (nameValue?.isNotEmpty ?? false);
  bool get hasAddress =>
      this.formValueMap.containsKey(AddressValueKey) &&
      (addressValue?.isNotEmpty ?? false);
  bool get hasNumber =>
      this.formValueMap.containsKey(NumberValueKey) &&
      (numberValue?.isNotEmpty ?? false);
  bool get hasPassword =>
      this.formValueMap.containsKey(PasswordValueKey) &&
      (passwordValue?.isNotEmpty ?? false);
  bool get hasEmail =>
      this.formValueMap.containsKey(EmailValueKey) &&
      (emailValue?.isNotEmpty ?? false);

  bool get hasNameValidationMessage =>
      this.fieldsValidationMessages[NameValueKey]?.isNotEmpty ?? false;
  bool get hasAddressValidationMessage =>
      this.fieldsValidationMessages[AddressValueKey]?.isNotEmpty ?? false;
  bool get hasNumberValidationMessage =>
      this.fieldsValidationMessages[NumberValueKey]?.isNotEmpty ?? false;
  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;
  bool get hasEmailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey]?.isNotEmpty ?? false;

  String? get nameValidationMessage =>
      this.fieldsValidationMessages[NameValueKey];
  String? get addressValidationMessage =>
      this.fieldsValidationMessages[AddressValueKey];
  String? get numberValidationMessage =>
      this.fieldsValidationMessages[NumberValueKey];
  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
  String? get emailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey];
}

extension Methods on FormViewModel {
  setNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NameValueKey] = validationMessage;
  setAddressValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[AddressValueKey] = validationMessage;
  setNumberValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NumberValueKey] = validationMessage;
  setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;
  setEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EmailValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    nameValue = '';
    addressValue = '';
    numberValue = '';
    passwordValue = '';
    emailValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      NameValueKey: getValidationMessage(NameValueKey),
      AddressValueKey: getValidationMessage(AddressValueKey),
      NumberValueKey: getValidationMessage(NumberValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
      EmailValueKey: getValidationMessage(EmailValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _ShopInformationViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _ShopInformationViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormViewModel model) => model.setValidationMessages({
      NameValueKey: getValidationMessage(NameValueKey),
      AddressValueKey: getValidationMessage(AddressValueKey),
      NumberValueKey: getValidationMessage(NumberValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
      EmailValueKey: getValidationMessage(EmailValueKey),
    });
