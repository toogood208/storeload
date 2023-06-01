import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/edge_insects.dart';
import 'package:storeload/ui/utils/test_styles.dart';
import 'package:storeload/ui/views/profile_screen/profile_screen_view_model.dart';
import 'package:storeload/ui/views/profile_screen/widgets/settings_tile.dart';
import 'package:storeload/ui/views/widgets/custome_home_page_icons.dart';

class ProfileScreenView extends StatelessWidget {
  const ProfileScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileScreenViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: kAppPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 64.h),
                Row(
                  children: [
                    Text(
                      'My Profile',
                      style: kClashGrotesk18Medium.copyWith(
                        color: kTextColor,
                      ),
                    ),
                    const Spacer(),
                    CustomHomePageIcon(
                      onTap: () {},
                      iconData: CupertinoIcons.bell,
                    ),
                  ],
                ),
                SizedBox(height: 32.h),
                SettingsTile(
                  onTap: () {},
                  text: 'Shopping Information',
                  icon: CupertinoIcons.cart,
                ),
                SizedBox(height: 32.h),
                SettingsTile(
                  onTap: () {},
                  text: 'Contact Us',
                  icon: CupertinoIcons.phone,
                ),
                SizedBox(height: 32.h),
                SettingsTile(
                  onTap: () {},
                  text: 'Frequently Asked Questions',
                  icon: CupertinoIcons.bolt,
                ),
                SizedBox(height: 32.h),
                SettingsTile(
                  onTap: () {},
                  text: 'Privacy Policy',
                  icon: CupertinoIcons.doc_text,
                ),
                SizedBox(height: 32.h),
                SettingsTile(
                  onTap: () {},
                  text: 'Terms of Service',
                  icon: CupertinoIcons.doc_checkmark,
                ),
                SizedBox(height: 32.h),
                SettingsTile(
                  onTap: () {},
                  text: 'App Version',
                  icon: CupertinoIcons.app_badge,
                  hasTrailingIcon: false,
                  trailingText: '1.0.0',
                ),
                SizedBox(height: 32.h),
                SettingsTile(
                  onTap: model.logOut,
                  text: 'Log Out',
                  icon: CupertinoIcons.power,
                  hasTrailingIcon: false,
                ),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => ProfileScreenViewModel(),
    );
  }
}
