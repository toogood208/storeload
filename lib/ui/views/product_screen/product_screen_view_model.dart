import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.logger.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/constants/app_constant.dart';
import 'package:storeload/core/models/product_model/product_model.dart';
import 'package:storeload/core/services/network_services/server_services.dart';

import '../../../core/services/localstorage/shared_preference_service.dart';

class ProductScreenViewModel extends BaseViewModel {
  final _navigation = locator<NavigationService>();
  final _server = locator<ServerService>();
  final logger = getLogger("ProductScreenViewModel");
  final _sharedPreferenceService = locator<SharedPreferencesService>();

  String choice = "";
  int selectedTypeIndex = 0;

  List<ProductDataModel> products = [];
  List<String> pres = [];

  ProductScreenViewModel() {
    getAllProducts();
  }

  Future<void> getAllProducts() async {
    setBusy(true);
    final token = await _sharedPreferenceService.getData(AppConstant.token);
     products = await _server.getAllProducts(token);
    pres = products.map<String>((e) => e.category).toList();
    choice = pres[0];
    setBusy(false);

  }

  void selectChips(bool value, int index) {
    if (value) {
      selectedTypeIndex = index;
      choice = pres[selectedTypeIndex];
      navigateToProductCategoryScreen(choice);
      notifyListeners();

    }
  }

  void navigateToProductDetailsScreen(CategoryDataModel product) {
    _navigation.navigateTo(Routes.productDetailScreenView,
        arguments: ProductDetailScreenViewArguments(product: product));
  }

  void navigateToProductCategoryScreen(String category) {
    _navigation.navigateTo(Routes.productCategoryView,
        arguments: ProductCategoryViewArguments(category: category));
  }
}
