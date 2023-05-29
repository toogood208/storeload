import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.logger.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/constants/app_constant.dart';
import 'package:storeload/core/models/product_model/product_model.dart';
import 'package:storeload/core/models/products.dart';
import 'package:storeload/core/services/network_services/server_services.dart';

import '../../../core/constants/dummy_data/product_categories.dart';
import '../../../core/services/localstorage/shared_preference_service.dart';

class ProductScreenViewModel extends BaseViewModel {
  final _navigation = locator<NavigationService>();
  final _server = locator<ServerService>();
  final logger = getLogger("ProductScreenViewModel");
  final _sharedPreferenceService = locator<SharedPreferencesService>();

  String choice = categories[0];
  int selectedTypeIndex = 0;

  List<Product> products = [];
  List<ProductDataModel> product2 = [];
  List<CategoryDataModel> pres = [];

  ProductScreenViewModel() {
    getAllProducts();
  }

  Future<void> getAllProducts() async {
    final token = await _sharedPreferenceService.getData(AppConstant.token);
    product2 = await _server.getAllProducts(token);

    notifyListeners();
  }

  void selectChips(bool value, int index) {
    if (value) {
      selectedTypeIndex = index;
      choice = categories[selectedTypeIndex];
      notifyListeners();
    }
  }

  void navigateToProductDetailsScreen(CategoryDataModel product) {
    _navigation.navigateTo(Routes.productDetailScreenView,
        arguments: ProductDetailScreenViewArguments(product: product));
  }
}
