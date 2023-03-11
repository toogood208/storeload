import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/edge_insects.dart';
import 'package:storeload/ui/utils/test_styles.dart';
import 'package:storeload/ui/views/widgets/app_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/onboarding.png",
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 18.91.h),
            Container(
              padding: kAppPadding,
              child: Column(
                children: [
                  Text(
                    "Restock your store with ease",
                    style: kClashGrotesk24Medium,
                  ),
                  SizedBox(height: 8.0.h),
                  Text(
                    "Take advantage of a Marketplace that offers several advantages when it comes to buying consumer products.",
                    style: kAmulya14Regular,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50.0.h),
                  AppButton(
                    width: 327.w,
                    height: 48.h,
                    title: 'Sign up',
                    onTap: () {},
                  ),
                  SizedBox(height: 20.0.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Have an account?",
                        style: kAmulya14Regular.copyWith(color: kTextColor),
                      ),
                      Text(
                        "Sign in",
                        style: kAmulya14Regular.copyWith(
                            fontWeight: FontWeight.w700,
                            color: kBackgroundColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
