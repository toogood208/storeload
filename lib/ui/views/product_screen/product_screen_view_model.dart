import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.router.dart';

import '../../../core/constants/dummy_data/product_categories.dart';
import '../../../core/constants/dummy_data/products.dart';



class ProductScreenViewModel extends BaseViewModel {
  final _navigation = locator<NavigationService>();

  String choice = categories[0];
  int selectedTypeIndex = 0;
  final labels = [...{...products}];
  void init(){
    //getDrinksCategory();
  }

  void selectChips(bool value, int index) {
    if (value) {
      selectedTypeIndex = index;
      choice = categories[selectedTypeIndex];
      notifyListeners();
    }
  }

  void navigateToProductDetailsScreen(Products product){
    _navigation.navigateTo(Routes.productDetailScreenView,
    arguments: ProductDetailScreenViewArguments(product: product));
  }
}
