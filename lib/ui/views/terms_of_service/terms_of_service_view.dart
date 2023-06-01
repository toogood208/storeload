import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/edge_insects.dart';
import 'package:storeload/ui/utils/test_styles.dart';
import 'package:storeload/ui/views/terms_of_service/terms_of_service_viewmodel.dart';

class TermsOfServiceView extends StatelessWidget {
  const TermsOfServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TermsOfServiceViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: kAppPadding,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 32.h),
              Row(
                children: [
                  InkWell(
                      onTap: model.pop, child: const Icon(Icons.arrow_back)),
                  SizedBox(width: 15.w),
                  Text(
                    'Terms of Service',
                    style: kClashGrotesk18Medium.copyWith(
                      color: kTextColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              Text(
                "Lorem ipsum dolor sit amet consectetur. Sed pretium tortor adipiscing ut. Aenean mauris non massa a. Mi ullamcorper ut ac amet faucibus senectus fermentum nunc adipiscing. Montes proin amet egestas nulla. Tortor diam enim in nulla at consectetur. Non malesuada sagittis est odio urna egestas facilisis aliquam. Auctor vitae ac sed amet elit faucibus venenatis et in. Porta egestas rhoncus semper aliquet. Sit placerat ipsum aliquet convallis feugiat. Fames proin morbi aliquet urna bibendum tortor. Tellus commodo sollicitudin aliquam praesent malesuada interdum consectetur at quam. Massa lacinia platea lacus mi cras leo mi erat. Montes aliquam ullamcorper quam non sapien viverra amet a amet. At donec magna felis consectetur a at ultrices cras commodo. In sodales mi vestibulum sed aliquam. Luctus odio habitasse suscipit elit. Sed tristique tincidunt mi leo scelerisque sollicitudin mollis nec ultrices. Non habitant sollicitudin facilisis nulla diam in. Nunc tristique aliquam et vivamus nec faucibus tortor risus neque.",
                style: kAmulya14Regular.copyWith(
                    color: kTextColor20, fontSize: 16.sp),
              ),
              SizedBox(height: 32.h),
              Text(
                'Our Policy',
                style: kClashGrotesk16Medium.copyWith(
                  color: kTextColor,
                ),
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur. Sed pretium tortor adipiscing ut. Aenean mauris non massa a. Mi ullamcorper ut ac amet faucibus senectus fermentum nunc adipiscing. Montes proin amet egestas nulla. Tortor diam enim in nulla at consectetur. Non malesuada sagittis est odio urna egestas facilisis aliquam. Auctor vitae ac sed amet elit faucibus venenatis et in. Porta egestas rhoncus semper aliquet. Sit placerat ipsum aliquet convallis feugiat. Fames proin morbi aliquet urna bibendum tortor. Tellus commodo sollicitudin aliquam praesent malesuada interdum consectetur at quam. Massa lacinia platea lacus mi cras leo mi erat. Montes aliquam ullamcorper quam non sapien viverra amet a amet. At donec magna felis consectetur a at ultrices cras commodo. In sodales mi vestibulum sed aliquam. Luctus odio habitasse suscipit elit. Sed tristique tincidunt mi leo scelerisque sollicitudin mollis nec ultrices. Non habitant sollicitudin facilisis nulla diam in. Nunc tristique aliquam et vivamus nec faucibus tortor risus neque.",
                style: kAmulya14Regular.copyWith(
                    color: kTextColor20, fontSize: 16.sp),
              ),
              SizedBox(height: 32.h),
            ]),
          ),
        ),
      ),
      viewModelBuilder: () => TermsOfServiceViewModel(),
    );
  }
}
