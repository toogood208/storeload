import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/test_styles.dart';

import '../../utils/border_radius.dart';

class InputField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final String? validationMessage;
  final TextEditingController? inputController;
  final IconData? prefixIcon;
  final bool? suffixIcon;
  final bool isDisabled;
  final bool autoFocus;
  final bool hasValidationMessage;
  final String? Function(String?)? validator;
  final void Function(String)? onchanged;
  final Color? textColor;
  final TextInputType keyboardType;
  final int? length;

  //final VoidCallback onChanged;

  const InputField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.validationMessage,
    this.inputController,
    this.prefixIcon,
    this.suffixIcon,
    this.isDisabled = false,
    this.autoFocus = false,
    this.hasValidationMessage = false,
    this.validator,
    this.onchanged,
    this.textColor,
    this.keyboardType = TextInputType.text,
    this.length,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool passwordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      debugLabel: "Scope",
      autofocus: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.labelText,
                style: kAmulya14Regular.copyWith(color: kTextColor20),
              ),
              Text(
                widget.validationMessage ?? '',
                style: kAmulya12Regular.copyWith(
                    color: widget.textColor ?? kTextColor20),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Focus(
            child: Builder(builder: (context) {
              final FocusNode focusNode = Focus.of(context);
              final bool hasFocus = focusNode.hasFocus;
              return Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: kTextColor50),
                    borderRadius: BorderRadius.circular(8)),
                child: TextFormField(
                  keyboardType: widget.keyboardType,
                  textAlign: TextAlign.start,
                  inputFormatters: widget.keyboardType == TextInputType.number
                      ? [
                          LengthLimitingTextInputFormatter(widget.length),
                        ]
                      : null,
                  textAlignVertical: TextAlignVertical.center,
                  controller: widget.inputController,
                  onChanged: widget.onchanged,
                  autofocus: widget.autoFocus,
                  readOnly: widget.isDisabled,
                  obscureText: passwordVisibility,
                  style: kAmulya14Regular.copyWith(color: kTextColor40),
                  decoration: InputDecoration(
                    fillColor: hasFocus ? kTextFieldFocusedColor : kWhiteColor,
                    prefixIcon: null == widget.prefixIcon
                        ? null
                        : Icon(
                            widget.prefixIcon,
                            color: kBackgroundColor,
                          ),
                    suffix: widget.suffixIcon == true
                        ? InkWell(
                            onTap: () => setState(
                              () => passwordVisibility = !passwordVisibility,
                            ),
                            child: Container(
                              transform:
                                  Matrix4.translationValues(0.0, 2.0, 0.0),
                              child: Text(
                                passwordVisibility ? "SHOW" : "HIDE",
                                style: kAmulya14Regular.copyWith(
                                    color: kBackgroundColor),
                              ),
                            ),
                          )
                        : null,
                    filled: true,
                    hintText: widget.hintText,
                    hintStyle: kAmulya14Regular.copyWith(color: kTextColor40),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 14.0),
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: kTextColor50, width: 1.0),
                        borderRadius: smallBorderRadius),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: widget.isDisabled == true
                                ? kWhiteColor
                                : kTextColor50,
                            width: 1.0),
                        borderRadius: normalBorderRadius),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: kTextColor50, width: 1.0),
                        borderRadius: normalBorderRadius),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

// class _NigeriaPhoneInputFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue, TextEditingValue newValue) {
//     var newText = newValue.text;

//     if (newText.length == 1) {
//       return TextEditingValue(text: '+234 $newText');
//     } else if (newText.length == 4) {
//       return TextEditingValue(text: '+234 ${newText.substring(1, 4)} ');
//     } else if (newText.length == 7) {
//       return TextEditingValue(
//           text: '+234 ${newText.substring(1, 4)} ${newText.substring(4, 7)} ');
//     } else if (newText.length == 11) {
//       return TextEditingValue(
//           text:
//               '+234 ${newText.substring(1, 4)} ${newText.substring(4, 7)} ${newText.substring(7, 11)}');
//     }

//     return newValue;
//   }
// }
