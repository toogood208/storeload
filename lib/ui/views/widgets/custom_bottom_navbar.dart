import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/test_styles.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });
  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: kBackgroundColor,
      unselectedItemColor: kInactiveBottomNavigationColor,
      selectedLabelStyle: kAmulya12Regular,
      unselectedLabelStyle: kAmulya12Regular,
      type: BottomNavigationBarType.fixed,
      backgroundColor: kWhiteColor,
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.house_fill,
            size: 16.5.r,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.creditcard,
            size: 16.5.r,
          ),
          label: "My Wallet",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.briefcase,
            size: 16.5.r,
          ),
          label: "Medicals",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.person,
            size: 16.5.r,
          ),
          label: "My Profile",
        ),
      ],
    );
  }
}
