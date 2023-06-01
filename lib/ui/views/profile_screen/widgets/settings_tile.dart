import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/test_styles.dart';

class SettingsTile extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final IconData icon;
  final bool hasTrailingIcon;
  final String? trailingText;
  const SettingsTile({
    super.key,
    required this.onTap,
    required this.text,
    required this.icon,
    this.hasTrailingIcon = true,
    this.trailingText,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: kTextColor30,
          ),
          SizedBox(width: 16.w),
          Text(
            text,
            style: kAmulya14Regular.copyWith(color: kTextColor),
          ),
          const Spacer(),
          hasTrailingIcon
              ? const Icon(
                  CupertinoIcons.chevron_forward,
                  color: kTextColor30,
                  size: 20,
                )
              : const SizedBox.shrink(),
          trailingText != null ?
          Text(trailingText!, style: kAmulya14Regular.copyWith(color: kTextColor)): const SizedBox.shrink(),
        ],
      ),
    );
  }
}
