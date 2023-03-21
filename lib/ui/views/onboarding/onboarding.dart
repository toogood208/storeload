import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeload/ui/utils/test_styles.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/onboarding/onboarding.png"),
            SizedBox(height: 18.91.h),
            Text("Restock your store with ease",
            style: kClashGrotesk24Medium,)
          ],
        ),
      ),
    );
  }
}
