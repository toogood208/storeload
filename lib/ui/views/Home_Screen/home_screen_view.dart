import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/test_styles.dart';
import 'package:storeload/ui/views/Home_Screen/home_screen_viewmodel.dart';
import 'package:storeload/ui/views/widgets/app_spinner.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

import '../../../app/app.locator.dart';
import '../widgets/custome_home_page_icons.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeScreenViewModel>.reactive(
      onViewModelReady: (model) => model.init(),
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      builder: (context, model, child) {
        if (model.isBusy) {
          Loader.show(
            context,
            progressIndicator: const AppSpinner(),
          );
        }

        return Scaffold(
          backgroundColor: kWhiteColor,
          appBar: AppBar(
            backgroundColor: kWhiteColor,
            elevation: 0,
            title: Text(
              "Hello, Shopper",
              style: kClashGrotesk18Medium.copyWith(
                color: kTextColor,
              ),
            ),
            actions: [
              CustomHomePageIcon(
                onTap: () {},
                iconData: CupertinoIcons.search,
              ),
              CustomHomePageIcon(
                onTap: () {},
                iconData: CupertinoIcons.shopping_cart,
              ),
              CustomHomePageIcon(
                onTap: () {},
                iconData: CupertinoIcons.bell,
              ),
            ],
          ),
          body: PageTransitionSwitcher(
              duration: const Duration(milliseconds: 300),
              reverse: model.reverse,
              transitionBuilder: (
                Widget child,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
              ) {
                return SharedAxisTransition(
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.horizontal,
                  child: child,
                );
              },
              child: getViewForIndex(model.currentIndex)),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: kBackgroundColor,
            unselectedItemColor: kInactiveBottomNavigationColor,
            selectedLabelStyle: kAmulya12Regular,
            unselectedLabelStyle: kAmulya12Regular,
            type: BottomNavigationBarType.fixed,
            backgroundColor: kWhiteColor,
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
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
                label: "my Profile",
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => locator<HomeScreenViewModel>(),
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const Text("Home");
      case 1:
        return const Text("My Wallet");
      case 2:
        return const Text("Medicals");
      case 3:
        return const Text("Profile");

      default:
        return const Text("Home");
    }
  }
}
