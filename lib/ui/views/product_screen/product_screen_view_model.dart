import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.logger.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/models/products.dart';

import '../../../core/constants/dummy_data/product_categories.dart';

class ProductScreenViewModel extends BaseViewModel {
  final _navigation = locator<NavigationService>();
  final logger = getLogger("ProductScreenViewModel");

  String choice = categories[0];
  int selectedTypeIndex = 0;

  List<Product> products = [];
  Datum? productDetals;


  ProductScreenViewModel() {

    _readJson();
  }

  void _readJson() async {
    setBusy(true);
    final String response =
        await rootBundle.loadString('assets/json/product.json');
    final data = Map<String, dynamic>.from(jsonDecode(response));
   final prod = Product.fromJson(data);
    products.add(prod);
    setBusy(false);
  }

  void selectChips(bool value, int index) {
    if (value) {
      selectedTypeIndex = index;
      choice = categories[selectedTypeIndex];
      notifyListeners();
    }
  }

  void navigateToProductDetailsScreen(Datum product) {
    _navigation.navigateTo(Routes.productDetailScreenView,
        arguments: ProductDetailScreenViewArguments(product: product));
  }
}
