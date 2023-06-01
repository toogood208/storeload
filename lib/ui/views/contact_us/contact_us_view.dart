import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/edge_insects.dart';
import 'package:storeload/ui/utils/test_styles.dart';
import 'package:storeload/ui/views/contact_us/contact_us_viewmodel.dart';
import 'package:storeload/ui/views/profile_screen/widgets/settings_tile.dart';
import 'package:storeload/ui/views/widgets/app_button.dart';

@FormView(fields: [
  FormTextField(name: 'message'),
])
class ContactUsView extends StatelessWidget {
  const ContactUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ContactUsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding: kAppPadding,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 32.h),
                  Row(
                    children: [
                      InkWell(
                          onTap: model.pop,
                          child: const Icon(Icons.arrow_back)),
                      SizedBox(width: 10.w),
                      Text(
                        'Contact Us',
                        style: kClashGrotesk18Medium.copyWith(
                          color: kTextColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32.h),
                  SettingsTile(
                    onTap: () {},
                    text: 'Phone Number',
                    icon: CupertinoIcons.phone,
                    hasTrailingIcon: false,
                  ),
                  SizedBox(height: 32.h),
                  model.isSendAMessage == false
                      ? Column(children: [
                          SettingsTile(
                            onTap: model.sendAMessage,
                            text: 'Send a Message',
                            icon: CupertinoIcons.chat_bubble_text,
                            hasTrailingIcon: false,
                          ),
                          SizedBox(height: 32.h),
                          SettingsTile(
                            onTap: () {},
                            text: 'Facebook',
                            icon: FontAwesomeIcons.facebookF,
                            isFaIcon: true,
                            hasTrailingIcon: false,
                          ),
                          SizedBox(height: 32.h),
                          SettingsTile(
                            onTap: () {},
                            text: 'Instagram',
                            icon: FontAwesomeIcons.instagram,
                            isFaIcon: true,
                            hasTrailingIcon: false,
                          ),
                          SizedBox(height: 32.h),
                          SettingsTile(
                            onTap: () {},
                            text: 'Twitter',
                            icon: FontAwesomeIcons.twitter,
                            isFaIcon: true,
                            hasTrailingIcon: false,
                          ),
                        ])
                      : Column(
                          children: [
                            FocusScope(
                              debugLabel: "Scope",
                              autofocus: true,
                              child: Focus(
                                child: Builder(builder: (context) {
                                  final FocusNode focusNode = Focus.of(context);
                                  final bool hasFocus = focusNode.hasFocus;
                                  return TextField(
                                    decoration: InputDecoration(
                                      fillColor: hasFocus
                                          ? kTextFieldFocusedColor
                                          : kWhiteColor,
                                      hintText: 'Start Writing...',
                                      hintStyle: kAmulya14Regular.copyWith(
                                        color: kTextColor30,
                                      ),
                                    ),
                                    maxLines: 8,
                                  );
                                }),
                              ),
                            ),
                            AppButton(
                              onTap: model.sendAMessage,
                              title: 'Send a Message',
                              height: 37.h,
                            )
                          ],
                        ),
                ]),
          ),
        ),
      )),
      viewModelBuilder: () => ContactUsViewModel(),
    );
  }
}
