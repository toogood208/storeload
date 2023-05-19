import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/edge_insects.dart';
import 'package:storeload/ui/utils/spacing.dart';
import 'package:storeload/ui/views/authentication/signup/sign_up.form.dart';
import 'package:storeload/ui/views/authentication/signup/sign_up_view_model.dart';
import 'package:storeload/ui/views/widgets/app_button.dart';
import 'package:storeload/ui/views/widgets/app_spinner.dart';
import 'package:storeload/ui/views/widgets/custom_app_bar.dart';
import 'package:storeload/ui/views/widgets/custom_checkbox.dart';
import 'package:storeload/ui/views/widgets/custom_text_button.dart';
import 'package:storeload/ui/views/widgets/custom_text_field.dart';

import '../../../utils/test_styles.dart';

@FormView(fields: [
  FormTextField(name: "name"),
  FormTextField(name: "address"),
  FormTextField(name: "LGA"),
  FormTextField(name: "password"),
])
class SignUP extends StatelessWidget with $SignUP {
  SignUP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return ViewModelBuilder.reactive(
      onDispose: (model) => disposeForm(),
      onViewModelReady: (model) => syncFormWithViewModel(model),
      viewModelBuilder: () => SignUpViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: kWhiteColor,
        appBar: const CustomAppBar(
          title: "Sign up",
        ),
        body: model.isBusy
            ? const Center(
                child: AppSpinner(),
              )
            : SingleChildScrollView(
                padding: kAppPadding,
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputField(
                        onchanged: model.nameValidationColor,
                        textColor: model.nameTextColor,
                        inputController: nameController,
                        labelText: "Your shop name",
                        hintText: "e.g storeload",
                        validationMessage: model.nameValidationMessage,
                        hasValidationMessage: model.hasAddressValidationMessage,
                      ),
                      kTextFieldHieghtSpacing,
                      InputField(
                        onchanged: model.addressValidationColor,
                        textColor: model.addressTextColor,
                        inputController: addressController,
                        labelText: "Your shop address",
                        hintText: "e.g No, 2 Alimosho road, Ikeja, Lagos",
                        validationMessage: model.addressValidationMessage,
                        hasValidationMessage: model.hasAddressValidationMessage,
                      ),
                      kTextFieldHieghtSpacing,
                      InputField(
                        onchanged: model.lgaValidationColor,
                        textColor: model.lgaTextColor,
                        inputController: LGAController,
                        validationMessage: model.lgaValidationMessage,
                        hasValidationMessage: model.hasLgaValidationMessage,
                        labelText: "Your shop local government area",
                        hintText: "e.g Ikeja, Lagos State",
                      ),
                      kTextFieldHieghtSpacing,
                      InputField(
                        onchanged: model.passwordValidationColor,
                        inputController: passwordController,
                        textColor: model.passwordTextColor,
                        validationMessage: model.passwordValidationMessage ??
                            "Maximum of 8 Characters",
                        hasValidationMessage:
                            model.hasPasswordValidationMessage,
                        labelText: "Create your  password",
                        suffixIcon: true,
                        hintText: "e.g storeload!",
                      ),
                      kTextFieldHieghtSpacingSmall,
                      MyCheckBox(listTileCheckBox: false),
                      SizedBox(height: 64.h),
                      AppButton(
                        width: double.infinity,
                        title: "Sign up",
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
                                "Have an account?",
                                style: kAmulya14Regular.copyWith(
                                    color: kTextColor),
                              ),
                              CustomTextButton(title: "Sign in", onTap: model.navigateToSignIN),
                            ],
                          ),
                          kTextFieldHieghtSpacing,
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'By signing up, you agree to our ',
                                  style: kAmulya12Regular.copyWith(
                                      color: kTextColor)),
                              TextSpan(
                                  text: 'Terms of service ',
                                  style: kAmulya12Regular.copyWith(
                                      color: kSecondOrangeColor)),
                              TextSpan(
                                  text: 'and ',
                                  style: kAmulya12Regular.copyWith(
                                      color: kTextColor)),
                              TextSpan(
                                  text: 'privacy policy',
                                  style: kAmulya12Regular.copyWith(
                                      color: kSecondOrangeColor)),
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
