import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/core/constants/app_constant.dart';
import 'package:storeload/core/models/product_model/product_model.dart';
import 'package:storeload/core/models/search_product_model/search_product_model.dart';

import '../../../app/app.router.dart';
import '../../../core/services/localstorage/shared_preference_service.dart';
import '../../../core/services/network_services/server_services.dart';

class SearchViewModel extends BaseViewModel {
  final _serverStorageService = locator<ServerService>();
  final _navigationService = locator<NavigationService>();
  final _sharePreferenceService = locator<SharedPreferencesService>();

List<SearchCategoryDataModel> _productList = [];
List<SearchCategoryDataModel> get productList => _productList;

Future<void> onSearch(String query) async {
  if (_productList.isNotEmpty) {
    _productList = _productList
        .where((element) => element.name.toLowerCase().contains(query))
        .toList();
  } else {
    await getProductList(query);
  }
}

Future<void> getProductList(String query) async {
  final token = _sharePreferenceService.getData(AppConstant.token);
  _productList = await _serverStorageService.getProductsBySearchText(token: token, query: query);
  onSearch(query);

}

  Future<void> goToProductDetailView(CategoryDataModel productDetail) async {

      _navigationService.navigateTo(Routes.productDetailScreenView,
          arguments: ProductDetailScreenViewArguments(product: productDetail));
    }
  }
