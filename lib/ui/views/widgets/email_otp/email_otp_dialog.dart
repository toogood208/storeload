import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/spacing.dart';
import 'package:storeload/ui/utils/test_styles.dart';

import 'package:stacked/stacked.dart';
import 'package:storeload/ui/views/widgets/app_spinner.dart';
import 'package:storeload/ui/views/widgets/custom_text_button.dart';
import 'package:storeload/ui/views/widgets/email_otp/email_otp_dialog_viewmodel.dart';

class EmailDialog extends StatelessWidget {
  EmailDialog({Key? key, required this.request, required this.completer})
      : super(key: key);
  final DialogRequest request;
  final Function(DialogResponse) completer;
  final OtpFieldController fieldcontroller = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    var email = request.data['email'];
    var maskedEmail =
        '${'*' * (email!.indexOf('@'))}${email!.substring(email!.indexOf('@'))}';
    return ViewModelBuilder<EmailOtpDialogViewModel>.reactive(
      onViewModelReady: (model) {
        model.init();
        model.startTimer();
      },
      builder: (context, model, child) => AlertDialog(
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
              "Enter the 4 digit code sent to $maskedEmail",
              textAlign: TextAlign.center,
              style: kAmulya14Regular.copyWith(color: kTextColor40),
            ),
            kTextFieldHieghtSpacing,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.h),
              child: OTPTextField(
                length: 4,
                controller: fieldcontroller,
                width: double.infinity,
                onChanged: (value) => model.setOtpValue(value),
                otpFieldStyle: OtpFieldStyle(focusBorderColor: kTextColor50),
                style: kAmulya18Regular.copyWith(color: kTextColor20),
                onCompleted: (value) async {
                  var status = await model.verifyOtp(
                    value,
                  );
                  model.stopTimer();
                  completer(DialogResponse(confirmed: status, data: value));
                },
              ),
            ),
            SizedBox(height: 8.h),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "${model.minutes}:${model.second}",
                style: kAmulya14Regular.copyWith(color: kTextColor),
              ),
            ),
            // SizedBox(height: 80.h),
            model.isBusy
                ? const Center(child: AppSpinner())
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          model.stopTimer();
                          completer(DialogResponse(confirmed: false));
                        },
                        child: Text(
                          'Exit',
                          style: kAmulya14Regular.copyWith(color: kTextColor),
                        ),
                      ),
                      CustomTextButton(
                          title: "Resend Code?", onTap: model.getOTP),
                    ],
                  )
          ],
        ),
      ),
      viewModelBuilder: () => EmailOtpDialogViewModel(),
    );
  }
}
