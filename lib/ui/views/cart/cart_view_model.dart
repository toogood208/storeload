import 'package:stacked/stacked.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/core/constants/app_constant.dart';
import 'package:storeload/core/models/cart_model/cart_model.dart';
import 'package:storeload/core/services/localstorage/shared_preference_service.dart';
import 'package:storeload/core/services/network_services/server_services.dart';

import '../../../app/app.logger.dart';
import '../../../core/services/network_services/network_debouncer.dart';

class CartViewModel extends BaseViewModel {
  final _server = locator<ServerService>();
  final _local = locator<SharedPreferencesService>();
  final debouncer = NetWorkDebouncer();
  final log = getLogger("CartViewModel");
  CartViewModel() {
    // debouncer.run((){
    //   getAllOrdersPlacedByUser();
    // });

  }
  List<CartOrderedItemsModel> cart = [];
  int totalPrice = 0;

  Future<void> getAllOrdersPlacedByUser() async {
    final token = await _local.getData(AppConstant.token);
    setBusy(true);
    cart = await _server.getAllOrderPlacedByUser(token);
    setBusy(false);
  }
}
