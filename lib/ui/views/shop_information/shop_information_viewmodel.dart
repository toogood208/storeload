import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.logger.dart';
import 'package:storeload/core/models/user.dart';
import 'package:storeload/core/services/user_data_service/user_data_service.dart';

class ShopInformationViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _userDataService = locator<UserDataService>();
  final logger = getLogger("ShopInformationViewModel");
  late final Data user;

  void init() {
    user = _userDataService.user;
    logger.v(user);
    notifyListeners();
  }

  void pop(){
    _navigationService.back();
  }
}
