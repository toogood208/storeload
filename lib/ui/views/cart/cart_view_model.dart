import 'package:stacked/stacked.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/core/constants/app_constant.dart';
import 'package:storeload/core/models/cart_model/cart_model.dart';
import 'package:storeload/core/services/localstorage/shared_preference_service.dart';
import 'package:storeload/core/services/network_services/server_services.dart';

class CartViewModel extends BaseViewModel {
  final _server = locator<ServerService>();
  final _local = locator<SharedPreferencesService>();
  CartViewModel() {
    getAllOrdersPlacedByUser();
  }

  List<CartDataModel> cartList = [];

  Future<void> getAllOrdersPlacedByUser() async {
    final token = await _local.getData(AppConstant.token);
    setBusy(true);
    final res = await _server.getAllOrderPlacedByUser(token);
    cartList = res!.data[0];
    setBusy(false);
  }
}
