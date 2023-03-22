import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/edge_insects.dart';
import 'package:storeload/ui/views/authentication/reset_email_password/reset_email_password.form.dart';
import 'package:storeload/ui/views/authentication/reset_email_password/reset_email_password_view_model.dart';
import 'package:storeload/ui/views/widgets/app_button.dart';
import 'package:storeload/ui/views/widgets/app_spinner.dart';
import 'package:storeload/ui/views/widgets/custom_app_bar.dart';
import 'package:storeload/ui/views/widgets/custom_text_field.dart';

@FormView(fields: [
  FormTextField(name: "name"),
])
class ResetEmailPaswword extends StatelessWidget with $ResetEmailPaswword {
  ResetEmailPaswword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ResetEmailPasswordViewModel(),
      onDispose: (model) => disposeForm(),
      onModelReady: (model) => syncFormWithViewModel(model),
      builder: (context, model, child) =>
      model.isBusy? const Scaffold(
        body: Center(
          child: AppSpinner(),
        ),
      ) :Scaffold(
        backgroundColor: kWhiteColor,
        appBar: const CustomAppBar(
          title: "Reset Password",
        ),
        body: SingleChildScrollView(
          padding: kAppPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InputField(
               onchanged: model.emailPasswordValidationColor,
                textColor: model.emailTextColor,
                 inputController: nameController,
                hasValidationMessage: model.hasNameValidationMessage,
                labelText: "Enter your  email",
                hintText: "e.g jude@gmail.com",
              ),
              SizedBox(height: 64.h),
               AppButton(title: "Reset Password", onTap: model.resendPasswordEmail,)
            ],
          ),
        ),
      ),
    );
  }
}
