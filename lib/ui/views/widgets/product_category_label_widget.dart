import 'package:flutter/material.dart';
import 'package:storeload/ui/utils/colors.dart';

import '../../utils/test_styles.dart';

class ProductCategoryLabelWidget extends StatelessWidget {
  const ProductCategoryLabelWidget({
    super.key,
    required this.label,
    required this.onTap,
  });
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
         label,
          style: kAmulya14Medium.copyWith(color: kTextColor),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            "See all",
            style: kAmulya14Regular.copyWith(color: kTextColor),
          ),
        ),
      ],
    );
  }
}