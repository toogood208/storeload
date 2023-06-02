import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/constants/app_constant.dart';
import 'package:storeload/core/services/localstorage/shared_preference_service.dart';
import 'package:storeload/core/services/network_services/server_services.dart';

class ProductDetailViewModel extends BaseViewModel {
  final _server = locator<ServerService>();
  final _local = locator<SharedPreferencesService>();
  final _navigation = locator<NavigationService>();
  final _snackBar = locator<SnackbarService>();

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  final List<String> _quantity = [
    "10",
    "20",
    "30",
    "40",
    "50",
  ];

  List<String> get quantity => _quantity;
  String selectQuantity = "10";

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void selectedQuantity(String quantity) {
    selectQuantity = quantity;
    notifyListeners();
  }

  void _showSnackbar() {
    _snackBar.showSnackbar(
        message: "product has been added to cart",
        mainButtonTitle: "view cart",
        onMainButtonTapped: () {
          _navigation.navigateTo(Routes.cartView);
        });
  }

  Future<void> createOrder(
      {required String productId,
      required String quantity,
      required String address}) async {
    final token = await _local.getData(AppConstant.token);
    final response = await _server.createOrder(
      token: token,
      address: address,
      productId: productId,
      quantity: int.parse(quantity),
    );
    if (response == true) {
      _showSnackbar();
    }
  }
}
