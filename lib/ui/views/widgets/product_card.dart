import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/currency_symbol.dart';
import 'package:storeload/ui/utils/test_styles.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.onTap,
  });
  final String productImage;
  final String productName;
  final String productPrice;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(1.r),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
            ),
            child: Image.network(productImage,
              width: 96.w,
              height: 86.h,),
          ),
          Text(
            productName,
            style: kAmulya14Regular.copyWith(color: kTextColor),
          ),
          Text(
            productPrice.currency(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}