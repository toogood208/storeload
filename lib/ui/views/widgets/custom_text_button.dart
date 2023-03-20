import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/test_styles.dart';

class CustomTextButton extends StatelessWidget {
  const   CustomTextButton({super.key, required this.title, required this.onTap});
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
        style: kAmulya14Regular.copyWith(
          fontWeight: FontWeight.w700,
          color: kBackgroundColor,
        ),
      ),
    );
  }
}
