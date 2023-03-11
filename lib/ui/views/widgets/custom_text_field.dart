import 'package:flutter/material.dart';
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
                style:  kAmulya12Regular.copyWith(
                    color: widget.hasValidationMessage? kErrorTextColor: kTextColor20),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Focus(
            child: Builder(
              builder: (context) {
                final FocusNode focusNode = Focus.of(context);
                final bool hasFocus = focusNode.hasFocus;
                return TextFormField(
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  controller: widget.inputController,
                  autofocus: widget.autoFocus,
                  readOnly: widget.isDisabled,
                  obscureText: passwordVisibility,
                  keyboardType: TextInputType.text,
                  style: kAmulya14Regular.copyWith(color: kTextColor40),
                  decoration: InputDecoration(
                    fillColor: hasFocus? kTextFieldFocusedColor: kWhiteColor,
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
                        transform: Matrix4.translationValues(0.0, 2.0, 0.0),
                        child: Text(passwordVisibility?"HIDE":"SHOW",
                        style: kAmulya14Regular.copyWith(color: kBackgroundColor),),

                      ),
                    )
                        : null,
                    filled: true,
                    hintText: widget.hintText,
                    hintStyle: kAmulya14Regular.copyWith(color: kTextColor40),
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 14.0),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: kTextColor50, width: 1.0),
                        borderRadius: smallBorderRadius),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: widget.isDisabled == true
                                ? kWhiteColor
                                : kTextColor50,
                            width: 1.0),
                        borderRadius: normalBorderRadius),
                    enabledBorder: OutlineInputBorder(
                        borderSide:const  BorderSide(
                            color: kTextColor50, width: 1.0),
                        borderRadius: normalBorderRadius),
                  ),
                );
              }
            ),
          ),

        ],
      ),
    );
  }
}
