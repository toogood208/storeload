// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String NameValueKey = 'name';

final Map<String, TextEditingController>
    _ResetEmailPaswwordTextEditingControllers = {};

final Map<String, FocusNode> _ResetEmailPaswwordFocusNodes = {};

final Map<String, String? Function(String?)?>
    _ResetEmailPaswwordTextValidations = {
  NameValueKey: null,
};

mixin $ResetEmailPaswword on StatelessWidget {
  TextEditingController get nameController =>
      _getFormTextEditingController(NameValueKey);
  FocusNode get nameFocusNode => _getFormFocusNode(NameValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_ResetEmailPaswwordTextEditingControllers.containsKey(key)) {
      return _ResetEmailPaswwordTextEditingControllers[key]!;
    }
    _ResetEmailPaswwordTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _ResetEmailPaswwordTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_ResetEmailPaswwordFocusNodes.containsKey(key)) {
      return _ResetEmailPaswwordFocusNodes[key]!;
    }
    _ResetEmailPaswwordFocusNodes[key] = FocusNode();
    return _ResetEmailPaswwordFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormViewModel model) {
    nameController.addListener(() => _updateFormData(model));
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated('Use syncFormWithViewModel instead.'
      'This feature was deprecated after 3.1.0.')
  void listenToFormUpdated(FormViewModel model) {
    nameController.addListener(() => _updateFormData(model));
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
          NameValueKey: nameController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the FormViewModel
  void _updateValidationData(FormViewModel model) =>
      model.setValidationMessages({
        NameValueKey: _getValidationMessage(NameValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _ResetEmailPaswwordTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_ResetEmailPaswwordTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _ResetEmailPaswwordTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _ResetEmailPaswwordFocusNodes.values) {
      focusNode.dispose();
    }

    _ResetEmailPaswwordTextEditingControllers.clear();
    _ResetEmailPaswwordFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get nameValue => this.formValueMap[NameValueKey] as String?;

  set nameValue(String? value) {
    this.setData(
      this.formValueMap
        ..addAll({
          NameValueKey: value,
        }),
    );

    if (_ResetEmailPaswwordTextEditingControllers.containsKey(NameValueKey)) {
      _ResetEmailPaswwordTextEditingControllers[NameValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasName =>
      this.formValueMap.containsKey(NameValueKey) &&
      (nameValue?.isNotEmpty ?? false);

  bool get hasNameValidationMessage =>
      this.fieldsValidationMessages[NameValueKey]?.isNotEmpty ?? false;

  String? get nameValidationMessage =>
      this.fieldsValidationMessages[NameValueKey];
  void clearForm() {
    nameValue = '';
  }
}

extension Methods on FormViewModel {
  setNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NameValueKey] = validationMessage;
}
