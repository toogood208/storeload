// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String FirstNameValueKey = 'firstName';
const String LastNameValueKey = 'lastName';
const String EmailValueKey = 'email';
const String NinValueKey = 'nin';
const String MobileNumberValueKey = 'mobileNumber';

final Map<String, TextEditingController> _FirstStepViewTextEditingControllers =
    {};

final Map<String, FocusNode> _FirstStepViewFocusNodes = {};

final Map<String, String? Function(String?)?> _FirstStepViewTextValidations = {
  FirstNameValueKey: null,
  LastNameValueKey: null,
  EmailValueKey: null,
  NinValueKey: null,
  MobileNumberValueKey: null,
};

mixin $FirstStepView on StatelessWidget {
  TextEditingController get firstNameController =>
      _getFormTextEditingController(FirstNameValueKey);
  TextEditingController get lastNameController =>
      _getFormTextEditingController(LastNameValueKey);
  TextEditingController get emailController =>
      _getFormTextEditingController(EmailValueKey);
  TextEditingController get ninController =>
      _getFormTextEditingController(NinValueKey);
  TextEditingController get mobileNumberController =>
      _getFormTextEditingController(MobileNumberValueKey);
  FocusNode get firstNameFocusNode => _getFormFocusNode(FirstNameValueKey);
  FocusNode get lastNameFocusNode => _getFormFocusNode(LastNameValueKey);
  FocusNode get emailFocusNode => _getFormFocusNode(EmailValueKey);
  FocusNode get ninFocusNode => _getFormFocusNode(NinValueKey);
  FocusNode get mobileNumberFocusNode =>
      _getFormFocusNode(MobileNumberValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_FirstStepViewTextEditingControllers.containsKey(key)) {
      return _FirstStepViewTextEditingControllers[key]!;
    }
    _FirstStepViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _FirstStepViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_FirstStepViewFocusNodes.containsKey(key)) {
      return _FirstStepViewFocusNodes[key]!;
    }
    _FirstStepViewFocusNodes[key] = FocusNode();
    return _FirstStepViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormViewModel model) {
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    emailController.addListener(() => _updateFormData(model));
    ninController.addListener(() => _updateFormData(model));
    mobileNumberController.addListener(() => _updateFormData(model));
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated('Use syncFormWithViewModel instead.'
      'This feature was deprecated after 3.1.0.')
  void listenToFormUpdated(FormViewModel model) {
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    emailController.addListener(() => _updateFormData(model));
    ninController.addListener(() => _updateFormData(model));
    mobileNumberController.addListener(() => _updateFormData(model));
  }

  final bool _autoTextFieldValidation = true;
  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          FirstNameValueKey: firstNameController.text,
          LastNameValueKey: lastNameController.text,
          EmailValueKey: emailController.text,
          NinValueKey: ninController.text,
          MobileNumberValueKey: mobileNumberController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the FormViewModel
  void _updateValidationData(FormViewModel model) =>
      model.setValidationMessages({
        FirstNameValueKey: _getValidationMessage(FirstNameValueKey),
        LastNameValueKey: _getValidationMessage(LastNameValueKey),
        EmailValueKey: _getValidationMessage(EmailValueKey),
        NinValueKey: _getValidationMessage(NinValueKey),
        MobileNumberValueKey: _getValidationMessage(MobileNumberValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _FirstStepViewTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_FirstStepViewTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _FirstStepViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _FirstStepViewFocusNodes.values) {
      focusNode.dispose();
    }

    _FirstStepViewTextEditingControllers.clear();
    _FirstStepViewFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get firstNameValue => this.formValueMap[FirstNameValueKey] as String?;
  String? get lastNameValue => this.formValueMap[LastNameValueKey] as String?;
  String? get emailValue => this.formValueMap[EmailValueKey] as String?;
  String? get ninValue => this.formValueMap[NinValueKey] as String?;
  String? get mobileNumberValue =>
      this.formValueMap[MobileNumberValueKey] as String?;

  set firstNameValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          FirstNameValueKey: value,
        }),
    );

    if (_FirstStepViewTextEditingControllers.containsKey(FirstNameValueKey)) {
      _FirstStepViewTextEditingControllers[FirstNameValueKey]?.text =
          value ?? '';
    }
  }

  set lastNameValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          LastNameValueKey: value,
        }),
    );

    if (_FirstStepViewTextEditingControllers.containsKey(LastNameValueKey)) {
      _FirstStepViewTextEditingControllers[LastNameValueKey]?.text =
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

    if (_FirstStepViewTextEditingControllers.containsKey(EmailValueKey)) {
      _FirstStepViewTextEditingControllers[EmailValueKey]?.text = value ?? '';
    }
  }

  set ninValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          NinValueKey: value,
        }),
    );

    if (_FirstStepViewTextEditingControllers.containsKey(NinValueKey)) {
      _FirstStepViewTextEditingControllers[NinValueKey]?.text = value ?? '';
    }
  }

  set mobileNumberValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          MobileNumberValueKey: value,
        }),
    );

    if (_FirstStepViewTextEditingControllers.containsKey(
        MobileNumberValueKey)) {
      _FirstStepViewTextEditingControllers[MobileNumberValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasFirstName =>
      this.formValueMap.containsKey(FirstNameValueKey) &&
      (firstNameValue?.isNotEmpty ?? false);
  bool get hasLastName =>
      this.formValueMap.containsKey(LastNameValueKey) &&
      (lastNameValue?.isNotEmpty ?? false);
  bool get hasEmail =>
      this.formValueMap.containsKey(EmailValueKey) &&
      (emailValue?.isNotEmpty ?? false);
  bool get hasNin =>
      this.formValueMap.containsKey(NinValueKey) &&
      (ninValue?.isNotEmpty ?? false);
  bool get hasMobileNumber =>
      this.formValueMap.containsKey(MobileNumberValueKey) &&
      (mobileNumberValue?.isNotEmpty ?? false);

  bool get hasFirstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey]?.isNotEmpty ?? false;
  bool get hasLastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey]?.isNotEmpty ?? false;
  bool get hasEmailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey]?.isNotEmpty ?? false;
  bool get hasNinValidationMessage =>
      this.fieldsValidationMessages[NinValueKey]?.isNotEmpty ?? false;
  bool get hasMobileNumberValidationMessage =>
      this.fieldsValidationMessages[MobileNumberValueKey]?.isNotEmpty ?? false;

  String? get firstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey];
  String? get lastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey];
  String? get emailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey];
  String? get ninValidationMessage =>
      this.fieldsValidationMessages[NinValueKey];
  String? get mobileNumberValidationMessage =>
      this.fieldsValidationMessages[MobileNumberValueKey];
  void clearForm() {
    firstNameValue = '';
    lastNameValue = '';
    emailValue = '';
    ninValue = '';
    mobileNumberValue = '';
  }
}

extension Methods on FormViewModel {
  setFirstNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[FirstNameValueKey] = validationMessage;
  setLastNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LastNameValueKey] = validationMessage;
  setEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EmailValueKey] = validationMessage;
  setNinValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NinValueKey] = validationMessage;
  setMobileNumberValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[MobileNumberValueKey] = validationMessage;
}
