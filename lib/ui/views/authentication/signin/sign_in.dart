import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:storeload/ui/views/authentication/signin/sign_in.form.dart';
import 'package:storeload/ui/views/authentication/signin/sign_in_view_model.dart';
import 'package:storeload/ui/views/widgets/app_spinner.dart';
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
      onDispose: (model) {
        nameController.clear();
        passwordController.clear();
        disposeForm();
      },
      onViewModelReady: (model) => syncFormWithViewModel(model),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kWhiteColor,
        appBar: const CustomAppBar(
          title: "Sign in",
        ),
        body: model.isBusy
            ? const Center(
                child: AppSpinner(),
              )
            : SingleChildScrollView(
                padding: kAppPadding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputField(
                      onchanged: model.nameValidationColor,
                      textColor: model.nameTextColor,
                      labelText: "Your shop name",
                      hintText: "e.g storeload",
                      inputController: nameController,
                      hasValidationMessage: model.hasNameValidationMessage,
                      validationMessage: model.nameValidationMessage,
                    ),
                    kTextFieldHieghtSpacing,
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
                    CustomTextButton(
                      title: "Forgot Password?",
                      onTap: model.navigateToForgetPassword,
                    ),
                    SizedBox(height: 64.h),
                    AppButton(
                      width: double.infinity,
                      title: "Sign in",
                      onTap: model.submit,
                    ),
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
                              style:
                                  kAmulya14Regular.copyWith(color: kTextColor),
                            ),
                            CustomTextButton(
                              title: "Sign up",
                              onTap: model.navigateToSignUp,
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
