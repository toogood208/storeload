import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_timer_button/otp_timer_button.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/spacing.dart';
import 'package:storeload/ui/utils/test_styles.dart';

class EmailDialog extends StatelessWidget {
  EmailDialog({super.key, required this.request, required this.completer});
  final DialogRequest request;
  final Function(DialogResponse) completer;

  OtpTimerButtonController controller = OtpTimerButtonController();
  final OtpFieldController fieldcontroller = OtpFieldController();

  _requestOtp() {
    controller.loading();
    Future.delayed(const Duration(seconds: 2), () {
      controller.startTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Verify your email address',
        textAlign: TextAlign.center,
        style: kClashGrotesk20Medium.copyWith(color: kTextColor),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 32.h),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Enter the four digit code sent to your ***********load@gmail.com",
            textAlign: TextAlign.center,
            style: kAmulya14Regular.copyWith(color: kTextColor40),
          ),
          kTextFieldHieghtSpacing,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.h),
            child: OTPTextField(
              controller: fieldcontroller,
              width: double.infinity,
              otpFieldStyle: OtpFieldStyle(focusBorderColor: kTextColor50),
              style: kAmulya18Regular.copyWith(color: kTextColor20),
              onCompleted: (value) => completer(DialogResponse(confirmed: true, data: value)),
            ),
          ),
          SizedBox(height: 8.h),
          Align(
            alignment: Alignment.centerRight,
            child: OtpTimerButton(
                controller: controller,
                backgroundColor: kTextColor40,
                buttonType: ButtonType.text_button,
                onPressed: () {
                  _requestOtp();
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
    );
  }
}
