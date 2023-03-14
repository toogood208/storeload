import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:storeload/ui/views/authentication/signin/sign_in.form.dart';
import 'package:storeload/ui/views/authentication/signin/sign_in_view_model.dart';
import 'package:storeload/ui/views/widgets/custom_text_button.dart';

import '../../../utils/colors.dart';
import '../../../utils/edge_insects.dart';
import '../../../utils/spacing.dart';
import '../../../utils/test_styles.dart';
import '../../widgets/app_button.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_text_field.dart';

@FormView(fields: [
  FormTextField(name: "name"),
  FormTextField(name: "password"),
])
class SignIN extends StatelessWidget with $SignIN {
  SignIN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SignInViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kWhiteColor,
        appBar: const CustomAppBar(
          title: "Sign in",
        ),
        body: SingleChildScrollView(
          padding: kAppPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputField(
                labelText: "Your shop name",
                hintText: "e.g storeload",
                inputController: nameController,
                hasValidationMessage: model.hasNameValidationMessage,
                validationMessage: model.nameValidationMessage,
              ),
              kTextFieldHieghtSpacing,
              InputField(
                inputController: passwordController,
                hasValidationMessage: model.hasPasswordValidationMessage,
                validationMessage: model.passwordValidationMessage ??
                    "Minimum Of 8 Characters",
                labelText: "Enter your  password",
                suffixIcon: true,
                hintText: "e.g storeload!",
              ),
              CustomTextButton(
                title: "Forgot Password?",
                onTap: () {},
              ),
              SizedBox(height: 64.h),
              const AppButton(width: double.infinity, title: "Sign in"),
              kTextFieldHieghtSpacing,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Do not have an account?",
                        style: kAmulya14Regular.copyWith(color: kTextColor),
                      ),
                      CustomTextButton(
                        title: "Sign up",
                        onTap: () {},
                      )
                    ],
                  ),
                  kTextFieldHieghtSpacing,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
