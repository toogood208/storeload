import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/test_styles.dart';
import 'package:storeload/ui/views/intro_screens/splash_screen/splash_screen_view_model.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ViewModelBuilder<SplashScreenViewModel>.reactive(
        viewModelBuilder: ()=> SplashScreenViewModel(),
        builder: (context,model,child){
          return Scaffold(
            backgroundColor:kBackgroundColor,
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/app_logo.png"),
                  SizedBox(width: 16.w),
                  Text(
                    "StoreReload",
                    style: kClashGrotesk32Medium,
                  ),
                ],
              ),
            ),
          );
        });

  }
}
