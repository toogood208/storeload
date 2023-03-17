import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_timer_button/otp_timer_button.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/test_styles.dart';
import 'package:storeload/ui/views/authentication/forgot_password/forgot_password_view_model.dart';
import 'package:storeload/ui/views/widgets/app_spinner.dart';
import 'package:storeload/ui/views/widgets/custom_text_button.dart';

import '../../../utils/colors.dart';
import '../../../utils/edge_insects.dart';
import '../../widgets/custom_app_bar.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ForgotPasswordViewModel(),
      onModelReady: (model) => model.startTimer(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kWhiteColor,
        appBar: const CustomAppBar(
          title: "Forgot Password?",
        ),
        body: SingleChildScrollView(
          padding: kAppPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Enter the four digit code sent to your ***********load@gmail",
                textAlign: TextAlign.left,
                style: kAmulya14Regular.copyWith(color: kTextColor40),
              ),
              SizedBox(height: 80.h),
              OTPTextField(
                width: MediaQuery.of(context).size.width,
                otpFieldStyle: OtpFieldStyle(focusBorderColor: kTextColor50),
                style: kAmulya18Regular.copyWith(color: kTextColor20),
                onChanged: (value) {
                  
                },
                margin: kOTPFieldPadding,
              ),
              SizedBox(height: 8.h),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "${model.minutes}:${model.second}",
                    style: kAmulya14Regular.copyWith(color: kTextColor),
                  ),),
                  SizedBox(height: 80.h),

                 model.isBusy? const AppSpinner() :CustomTextButton(title: "Resend Code?", onTap: model.getOTP)
            
              
            ],
          ),
        ),
      ),
    );
  }
}
