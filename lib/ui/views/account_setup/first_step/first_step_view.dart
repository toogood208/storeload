import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/border_radius.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/spacing.dart';
import 'package:storeload/ui/utils/test_styles.dart';
import 'package:storeload/ui/views/account_setup/first_step/first_step_view.form.dart';

import 'package:storeload/ui/views/account_setup/first_step/first_step_viewmodel.dart';
import 'package:storeload/ui/views/widgets/app_button.dart';
import 'package:storeload/ui/views/widgets/app_spinner.dart';
import 'package:storeload/ui/views/widgets/custom_app_bar.dart';
import 'package:storeload/ui/views/widgets/custom_text_field.dart';

@FormView(fields: [
  FormTextField(name: 'firstName'),
  FormTextField(name: 'lastName'),
  FormTextField(name: 'email'),
  FormTextField(name: 'nin'),
  FormTextField(name: 'mobileNumber'),
])
class FirstStepView extends StatelessWidget with $FirstStepView {
  FirstStepView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FirstStepViewModel>.reactive(
      onDispose: (model) => disposeForm(),
      onModelReady: (model) {
        syncFormWithViewModel(model);
       // model.init();
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: kWhiteColor,
        appBar: const CustomAppBar(title: 'Set-up your account'),
        body: model.isBusy
            ? const Center(
                child: AppSpinner(),
              )
            : SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(24.h, 0, 24.h, 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Text(
                      'This will help us to know you better.',
                      style: kAmulya14Regular.copyWith(color: kTextColor40),
                    )),
                    kTextFieldHieghtSpacing,
                    getStepWidget(model.currentStep),
                    kTextFieldHieghtSpacing,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () => model.changeStep(1),
                            child: const StepIndicatorWidget(1)),
                        GestureDetector(
                            onTap: () => model.changeStep(2),
                            child: const StepIndicatorWidget(2)),
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2.h),
                    AppButton(
                      isBusy: model.isBusy,
                      title: model.currentStep == 1 ? 'Next' : 'Go to Home',
                      width: double.infinity,
                      onTap: () {
                        if (model.currentStep == 1) {
                          model.changeStep(2);
                        } else {
                         // model.goToHome();
                        }
                      },
                    )
                  ],
                )),
      ),
      viewModelBuilder: () => FirstStepViewModel(),
    );
  }

  Widget getStepWidget(int step) {
    switch (step) {
      case 1:
        return StepOneWidget(
          firstNameController: firstNameController,
          lastNameController: lastNameController,
        );
      case 2:
        return StepTwoWidget(
          mobileNumberController: mobileNumberController,
          ninController: ninController,
          emailController: emailController,
        );
      default:
        return const SizedBox.shrink();
    }
  }
}

class StepTwoWidget extends ViewModelWidget<FirstStepViewModel> {
  const StepTwoWidget({
    super.key,
    required this.mobileNumberController,
    required this.ninController,
    required this.emailController,
  });

  final TextEditingController mobileNumberController;
  final TextEditingController ninController;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context, FirstStepViewModel viewModel) {
    return Column(
      children: [
        InputField(
            validationMessage: viewModel.mobileNumberValidationMessage,
            keyboardType: TextInputType.number,
            length: 13,
            textColor: viewModel.mobileNumberTextColor,
            onchanged: viewModel.mobileNumberValidationColor,
            inputController: mobileNumberController,
            labelText: 'Your mobile number',
            hintText: 'e.g +2348010002000'),
        kTextFieldHieghtSpacing,
        InputField(
            validationMessage: viewModel.ninValidationMessage,
            onchanged: viewModel.ninNumberValidationColor,
            textColor: viewModel.ninNumberTextColor,
            keyboardType: TextInputType.number,
            length: 11,
            inputController: ninController,
            labelText: 'Your NIN',
            hintText: 'e.g 12345678912'),
        kTextFieldHieghtSpacing,
        InputField(
            validationMessage: viewModel.emailValidationMessage,
            textColor: viewModel.emailTextColor,
            inputController: emailController,
            labelText: 'Your email address',
            hintText: 'e.g Storeload@gmail.com'),
        SizedBox(height: 12.h),
      ],
    );
  }
}

class StepIndicatorWidget extends ViewModelWidget<FirstStepViewModel> {
  const StepIndicatorWidget(
    this.step, {
    super.key,
  });
  final int step;
  @override
  Widget build(BuildContext context, FirstStepViewModel viewModel) {
    return Container(
        width: 0.4.sw,
        height: 50.h,
        decoration: const BoxDecoration(
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 18.h,
              backgroundColor:
                  viewModel.currentStep == step ? kTextColor : kTextColor80,
              child: Text(
                step.toString(),
                textAlign: TextAlign.center,
                style: kAmulya14Regular.copyWith(
                  color: viewModel.currentStep == step
                      ? kWhiteColor
                      : kTextColor60,
                ),
              ),
            ),
            SizedBox(height: 3.h),
            Container(
              height: 5.h,
              width: 0.4.sw,
              decoration: BoxDecoration(
                color:
                    viewModel.currentStep == step ? kTextColor : kTextColor80,
                borderRadius: BorderRadius.circular(2.5.h),
              ),
            ),
          ],
        ));
  }
}

class StepOneWidget extends ViewModelWidget<FirstStepViewModel> {
  const StepOneWidget({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
  });

  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  @override
  Widget build(BuildContext context, FirstStepViewModel viewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputField(
          labelText: "Your first name",
          hintText: "Joseph",
          textColor: viewModel.firstNameTextColor,
          inputController: firstNameController,
          validationMessage: viewModel.firstNameValidationMessage,
          onchanged: viewModel.firstNameValidationColor,
        ),
        kTextFieldHieghtSpacing,
        InputField(
          labelText: "Your last name",
          hintText: "Jude",
          textColor: viewModel.lastNameTextColor,
          inputController: lastNameController,
          validationMessage: viewModel.lastNameValidationMessage,
          onchanged: viewModel.lastNameValidationColor,
        ),
        kTextFieldHieghtSpacing,
        Text(
          'Your Gender',
          style: kAmulya14Regular.copyWith(color: kTextColor20),
        ),
        kTextFieldHieghtSpacing,
        DropdownButtonFormField(
          value: viewModel.selectedItem,
          hint: Text(
            'e.g Male',
            style: kAmulya14Regular.copyWith(color: kTextColor40),
          ),
          items: viewModel.dropdownItems
              .map((e) => DropdownMenuItem(
                  onTap: () => viewModel.saveSelection(),
                  value: e,
                  child: Text(e)))
              .toList(),
          onChanged: (value) => viewModel.setSelectedItem(value as String),
          // onSaved: (value) => model.saveSelection(),
          decoration: InputDecoration(
            fillColor:
                viewModel.hasFocus ? kTextFieldFocusedColor : kWhiteColor,
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 14.0),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: kTextColor50, width: 1.0),
                borderRadius: smallBorderRadius),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: kTextColor50, width: 1.0),
                borderRadius: normalBorderRadius),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: kTextColor50, width: 1.0),
                borderRadius: normalBorderRadius),
          ),
        ),
        SizedBox(height: 12.h)
      ],
    );
  }
}
