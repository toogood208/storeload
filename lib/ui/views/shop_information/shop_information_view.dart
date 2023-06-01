import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/edge_insects.dart';
import 'package:storeload/ui/utils/spacing.dart';
import 'package:storeload/ui/utils/test_styles.dart';
import 'package:storeload/ui/views/shop_information/shop_information_view.form.dart';
import 'package:storeload/ui/views/shop_information/shop_information_viewmodel.dart';
import 'package:storeload/ui/views/widgets/custom_text_field.dart';

@FormView(fields: [
  FormTextField(name: "name"),
  FormTextField(name: "address"),
  FormTextField(name: "number"),
  FormTextField(name: "password"),
  FormTextField(name: "email"),
])
class ShopInformationView extends StatelessWidget with $ShopInformationView {
  const ShopInformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShopInformationViewModel>.reactive(
      onDispose: (model) => disposeForm(),
      onViewModelReady: (model) => syncFormWithViewModel(model),
      builder: (context, model, child) => Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: kAppPadding,
          child: Column(children: [
            SizedBox(height: 32.h),
            Row(
              children: [
                InkWell(onTap: model.pop, child: const Icon(Icons.arrow_back)),
                SizedBox(width: 15.w),
                Text(
                  'Shop Information',
                  style: kClashGrotesk18Medium.copyWith(
                    color: kTextColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.h),
            InputField(
              inputController: nameController,
              labelText: "Your shop name",
              hintText: "e.g storeload",
            ),
            kTextFieldHieghtSpacing,
            InputField(
              inputController: addressController,
              labelText: "Your shop address",
              hintText: "e.g No, 2 Alimosho road, Ikeja, Lagos",
            ),
            kTextFieldHieghtSpacing,
            InputField(
              inputController: numberController,
              labelText: "Your mobile number",
              hintText: "+234 000 000 0000",
            ),
            kTextFieldHieghtSpacing,
            InputField(
              inputController: emailController,
              labelText: "Your email address",
              hintText: "e.g Storeload@gmail.com",
            ),
            kTextFieldHieghtSpacing,
            InputField(
              inputController: passwordController,
              labelText: "Your password",
              hintText: "********",
            ),
            kTextFieldHieghtSpacing,
          ]),
        ),
      )),
      viewModelBuilder: () => ShopInformationViewModel(),
    );
  }
}
