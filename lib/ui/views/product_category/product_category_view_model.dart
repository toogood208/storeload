import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/constants/app_constant.dart';
import 'package:storeload/core/models/product_model/product_model.dart';
import 'package:storeload/core/services/localstorage/shared_preference_service.dart';
import 'package:storeload/core/services/network_services/server_services.dart';

class ProductCategoryViewModel extends BaseViewModel {
  final _serverService = locator<ServerService>();
  final _navigationService = locator<NavigationService>();
  final _sharePreferenceService = locator<SharedPreferencesService>();

  List<CategoryDataModel> _productList = [];
  List<CategoryDataModel> get productList => _productList;

  Future<void> getProductByCategory(String category) async {
    final token = await _sharePreferenceService.getData(AppConstant.token);
    _productList = await _serverService.getProductsByCategory(
        token: token, category: category);
    notifyListeners();
  }

  navigateToProductDetailsScreen(CategoryDataModel productDetails) {
    _navigationService.navigateTo(Routes.productDetailScreenView,
        arguments: ProductDetailScreenViewArguments(product: productDetails));
  }
}
