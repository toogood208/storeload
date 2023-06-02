import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/test_styles.dart';
import 'package:storeload/ui/views/Home_Screen/home_screen_viewmodel.dart';
import 'package:storeload/ui/views/product_search/search_view.dart';
import 'package:storeload/ui/views/profile_screen/profile_screen_view.dart';
import 'package:storeload/ui/views/widgets/custom_bottom_navbar.dart';

import '../../../app/app.locator.dart';
import '../product_screen/product_screen_view.dart';
import '../widgets/custome_home_page_icons.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeScreenViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: kWhiteColor,
          appBar: model.currentIndex != 3
              ? AppBar(
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
                      onTap: () {
                        showSearch(context: context,
                            delegate: ProductSearch());
                      },
                      iconData: CupertinoIcons.search,
                    ),
                    CustomHomePageIcon(
                      onTap: model.navigateToCartView,
                      iconData: CupertinoIcons.shopping_cart,
                    ),
                    CustomHomePageIcon(
                      onTap: () {},
                      iconData: CupertinoIcons.bell,
                    ),
                  ],
                )
              : null,
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
          bottomNavigationBar: CustomBottomNavbar(
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
          ),
        );
      },
      viewModelBuilder: () => locator<HomeScreenViewModel>(),
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const ProductScreenView();
      case 1:
        return const Text("My Wallet");
      case 2:
        return const ProductScreenView();
      case 3:
        return const ProfileScreenView();

      default:
        return const ProductScreenView();
    }
  }
}
