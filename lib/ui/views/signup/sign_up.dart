import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/edge_insects.dart';
import 'package:storeload/ui/utils/spacing.dart';
import 'package:storeload/ui/views/signup/sign_up.form.dart';
import 'package:storeload/ui/views/signup/sign_up_view_model.dart';
import 'package:storeload/ui/views/widgets/app_button.dart';
import 'package:storeload/ui/views/widgets/custom_app_bar.dart';
import 'package:storeload/ui/views/widgets/custom_checkbox.dart';
import 'package:storeload/ui/views/widgets/custom_text_field.dart';

import '../../utils/test_styles.dart';

@FormView(
  fields: [
    FormTextField(name: "name"),
    FormTextField(name: "address"),
    FormTextField(name: "LGA"),
    FormTextField(name: "password"),
  ]
)

class SignUP extends StatelessWidget with $SignUP{
  SignUP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: ()=> SignUpViewModel(),
      onModelReady: (model) => syncFormWithViewModel(model),
      onDispose: (_)=> disposeForm(),
      builder: (context,model,child)=>
       Scaffold(
        backgroundColor: kWhiteColor,
        appBar: const CustomAppBar(title: "Sign up",),
        body:SingleChildScrollView(
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
              validationMessage: model.nameValidationMessage,),
              kTextFieldHieghtSpacing,
              InputField(
                inputController: addressController,
                hasValidationMessage: model.hasAddressValidationMessage,
                validationMessage: model.addressValidationMessage,
                labelText: "Your shop address",
                hintText: "e.g No, 2 Alimosho road, Ikeja, Lagos",),
              kTextFieldHieghtSpacing,
              InputField(
                inputController: LGAController,
                hasValidationMessage: model.hasLgaValidationMessage,
                validationMessage: model.lgaValidationMessage,
                labelText: "Your shop local government area",
                hintText: "e.g Ikeja, Lagos State",),
              kTextFieldHieghtSpacing,
              InputField(
                inputController: passwordController,
                hasValidationMessage: model.hasPasswordValidationMessage,
                validationMessage: model.passwordValidationMessage ?? "Minimum Of 8 Characters",
                labelText: "Create your  password",
                suffixIcon: true,
                hintText: "e.g storeload!",),
              kTextFieldHieghtSpacingSmall,
               MyCheckBox(listTileCheckBox: false),
              SizedBox(height: 64.h),
              const AppButton(
                width: double.infinity,
                  title: "Sign up"),
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
                        style: kAmulya14Regular.copyWith(color: kTextColor),
                      ),
                      Text(
                        "Sign in",
                        style: kAmulya14Regular.copyWith(
                            fontWeight: FontWeight.w700,
                            color: kBackgroundColor),
                      ),
                    ],
                  ),
                  kTextFieldHieghtSpacing,
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'By signing up, you agree to our ',
                          style: kAmulya12Regular.copyWith(color: kTextColor)
                      ),
                      TextSpan(
                          text: 'Terms of service ',
                          style: kAmulya12Regular.copyWith(color: kSecondOrangeColor)
                      ),
                      TextSpan(
                          text: 'and ',
                          style: kAmulya12Regular.copyWith(color: kTextColor)
                      ),
                      TextSpan(
                          text: 'privacy policy',
                          style: kAmulya12Regular.copyWith(color: kSecondOrangeColor)
                      ),

                    ]),),

                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
