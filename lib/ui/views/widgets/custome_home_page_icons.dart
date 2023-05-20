import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';

class CustomHomePageIcon extends StatelessWidget {
  const CustomHomePageIcon({
    super.key,
    required this.onTap,
    required this.iconData,
  });

  final VoidCallback onTap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        iconData,
        color: kTextColor30,
        size: 19.22.r,
      ),
    );
  }
}