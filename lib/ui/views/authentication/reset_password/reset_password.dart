// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:storeload/ui/views/authentication/reset_password/reset_password.form.dart';
import 'package:storeload/ui/views/authentication/reset_password/reset_password_view_model.dart';
import 'package:storeload/ui/views/widgets/app_button.dart';
import 'package:storeload/ui/views/widgets/custom_text_field.dart';

import '../../../utils/colors.dart';
import '../../../utils/edge_insects.dart';
import '../../widgets/custom_app_bar.dart';

@FormView(fields: [
  FormTextField(name: "password"),
])
class ResetPaswword extends StatelessWidget with $ResetPaswword {
  ResetPaswword({Key? key, this.userId}) : super(key: key);
  String? userId;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ResetPasswordViewModel(),
      onDispose: (model) => disposeForm(),
      onModelReady: (model) => syncFormWithViewModel(model),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kWhiteColor,
        appBar: const CustomAppBar(
          title: "Reset Password?",
        ),
        body: SingleChildScrollView(
          padding: kAppPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InputField(
                onchanged: model.passwordValidationColor,
                textColor: model.passwordTextColor,
                inputController: passwordController,
                hasValidationMessage: model.hasPasswordValidationMessage,
                validationMessage: model.passwordValidationMessage ??
                    "Minimum Of 8 Characters",
                labelText: "Enter your  password",
                suffixIcon: true,
                hintText: "e.g storeload!",
              ),
              SizedBox(height: 64.h),
              AppButton(
                title: "Reset Password",
                onTap: () => model.submit(userId!),
              )
            ],
          ),
        ),
      ),
    );
  }
}
