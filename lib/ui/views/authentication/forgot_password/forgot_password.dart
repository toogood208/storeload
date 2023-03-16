import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_timer_button/otp_timer_button.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/test_styles.dart';
import 'package:storeload/ui/views/authentication/forgot_password/forgot_password_view_model.dart';

import '../../../utils/colors.dart';
import '../../../utils/edge_insects.dart';
import '../../widgets/custom_app_bar.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);
   OtpTimerButtonController controller = OtpTimerButtonController();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ForgotPasswordViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kWhiteColor,
        appBar: const CustomAppBar(
          title: "Forgot Password?",
        ),
        body: SingleChildScrollView(
          padding: kAppPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter the four digit code sent to your mail",
                style: kAmulya14Regular.copyWith(color: kTextColor40),
              ),
              SizedBox(height: 80.h),
              OTPTextField(
                width: MediaQuery.of(context).size.width,
                otpFieldStyle: OtpFieldStyle(focusBorderColor: kTextColor50),
                style: kAmulya18Regular.copyWith(color: kTextColor20),
              ),
              SizedBox(height: 8.h),
              Align(
                alignment: Alignment.centerRight,
                child: OtpTimerButton(
                    controller: controller,
                    backgroundColor: kTextColor40,
                    buttonType: ButtonType.text_button,
                    onPressed: () async {
                      await model.showBasicDialog();

                      controller.loading();
                      Future.delayed(const Duration(seconds: 2), () {
                        controller.startTimer();
                      });
                    },
                    text: Text(
                      "Resend Code?",
                      style: kAmulya14Regular.copyWith(
                        fontWeight: FontWeight.w700,
                        color: kBackgroundColor,
                      ),
                    ),
                    duration: 30,
                    loadingIndicator: CircularProgressIndicator(
                      color: kBackgroundColor,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
