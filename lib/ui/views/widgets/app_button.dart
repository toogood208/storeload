
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeload/ui/utils/test_styles.dart';

import '../../utils/colors.dart';
import 'app_spinner.dart';

enum AppButtonSize { tiny, small, medium, normal }

enum AppButtonType { elevated, outlined }

class AppButton extends StatelessWidget {
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final bool disabled;
  final bool isBusy;
  final AppButtonSize size;
  final String title;
  final Color? titleColor;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? iconSize;
  final Color? borderColor;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final Color? outlineButtonBorderColor;
  final AppButtonType _type;

  const AppButton({
    Key? key,
    this.width,
    this.disabled = false,
    required this.title,
    this.isBusy = false,
    this.titleColor =  kWhiteColor,
    this.backgroundColor,
    this.height,
    this.textStyle,
    this.size = AppButtonSize.normal,
    this.onTap,
    this.iconSize,
    this.borderColor,
    this.iconColor,
    this.leadingIcon,
    this.trailingIcon,
    this.outlineButtonBorderColor,
  })  : _type = AppButtonType.elevated,
        super(key: key);

  const AppButton.outlined({
    Key? key,
    this.width,
    this.disabled = false,
    required this.title,
    this.isBusy = false,
    this.titleColor = kWhiteColor,
    this.backgroundColor,
    this.height,
    this.textStyle,
    this.size = AppButtonSize.normal,
    this.onTap,
    this.iconSize,
    this.borderColor,
    this.iconColor,
    this.leadingIcon,
    this.trailingIcon,
    this.outlineButtonBorderColor,
  })  : _type = AppButtonType.outlined,
        super(key: key);

  double _getButtonHeight(AppButtonSize size) {
    switch (size) {
      case AppButtonSize.tiny:
        return 20;
      case AppButtonSize.small:
        return 40;
      case AppButtonSize.medium:
        return 55;
      case AppButtonSize.normal:
        return 60;
    }
  }

  double _getButtonWidth(AppButtonSize size) {
    switch (size) {
      case AppButtonSize.tiny:
        return 100;
      case AppButtonSize.small:
        return 120;
      case AppButtonSize.medium:
        return 200;
      case AppButtonSize.normal:
        return 350;
    }
  }

  TextStyle _getTextSize(AppButtonSize size) {
    switch (size) {
      case AppButtonSize.tiny:
        return kAmulya14Regular.copyWith(
          color: titleColor,
          fontSize: 9,
        );
      case AppButtonSize.small:
        return kAmulya14Regular.copyWith(
          color: kWhiteColor,
        );
      case AppButtonSize.medium:
        return kAmulya14Regular.copyWith(
          color: kWhiteColor,
        );
      case AppButtonSize.normal:
        return kAmulya14Regular.copyWith(
          color: kWhiteColor,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (_type) {
      case AppButtonType.elevated:
        return MaterialButton(
          disabledColor: Colors.grey.shade200,
          onPressed: disabled ? null : _onTap,
          color: backgroundColor ??kBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius:  BorderRadius.circular(8),
          ),
          elevation: 0,
          child: Container(
            width: width ?? _getButtonWidth(size),
            height: height ?? _getButtonHeight(size),
            decoration: BoxDecoration(
              borderRadius:  BorderRadius.circular(8),
              border: borderColor != null
                  ? Border.all(
                  color: borderColor ?? kBackgroundColor)
                  : null,
            ),
            child: isBusy
                ? Center(
                child: AppSpinner(
                  color: titleColor ?? kWhiteColor,
                  size: 30,
                ))
                : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (leadingIcon != null) ...[
                  Icon(
                    leadingIcon,
                    size: iconSize,
                    color: iconColor,
                  ),
                  SizedBox(width: 25.0.h),
                ],
                Flexible(
                  child: Text(
                    title,
                    style: _getTextSize(size),
                  ),
                ),
                if (trailingIcon != null) ...[
                  SizedBox(width: 25.0.h),
                  Icon(
                    trailingIcon,
                    size: iconSize,
                    color: iconColor,
                  ),
                ]
              ],
            ),
          ),
        );
      case AppButtonType.outlined:
        return OutlinedButton(
          onPressed: disabled ? null : _onTap,
          style: OutlinedButton.styleFrom(
            backgroundColor: backgroundColor,
            side: BorderSide(
                color: outlineButtonBorderColor ??kBackgroundColor),
          ),
          child: Container(
            width: width ?? _getButtonWidth(size),
            height: height ?? _getButtonHeight(size),
            decoration: BoxDecoration(
              borderRadius:  BorderRadius.circular(8),
              border: borderColor != null
                  ? Border.all(
                  color: borderColor ?? kBackgroundColor)
                  : null,
            ),
            child: isBusy
                ? Center(
                child: AppSpinner(
                  color: titleColor ?? kWhiteColor,
                  size: 30,
                ))
                : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (leadingIcon != null) ...[
                  Icon(
                    leadingIcon,
                    size: iconSize,
                    color: iconColor,
                  ),
            SizedBox(width: 25.0.h),
                ],
                Flexible(
                  child: Text(
                    title,
                    style: _getTextSize(size),
                  ),
                ),
                if (trailingIcon != null) ...[
    SizedBox(width: 25.0.h),
                  Icon(
                    trailingIcon,
                    size: iconSize,
                    color: iconColor,
                  ),
                ]
              ],
            ),
          ),
        );
    }
  }

  void _onTap() {
    if (!isBusy) onTap?.call();
  }
}
