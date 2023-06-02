import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.logger.dart';
import 'package:storeload/core/models/user.dart';
import 'package:storeload/core/services/network_services/server_services.dart';
import 'package:storeload/core/services/user_data_service/user_data_service.dart';
import 'package:storeload/ui/views/shop_information/shop_information_view.form.dart';

class ShopInformationViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _userDataService = locator<UserDataService>();
  final _serverService = locator<ServerService>();
  final _snackBarService = locator<SnackbarService>();

  final logger = getLogger("ShopInformationViewModel");
  late final Data user;

  void init() async {
    final token = _userDataService.user.token;
    await getUserProfile(token: token);
  }

  Future<void> getUserProfile({required String token}) async {
    setBusy(true);
    final response = await _serverService.getUserProfile(token: token);
    if (response != null && response["status"]) {
      user = Data(
          id: response["data"]["_id"],
          shopName: response["data"]["shopName"],
          password: '',
          isEmailVerified: response["data"]["isEmailVerified"],
          v: response["data"]["v"],
          nin: response["data"]["nin"],
          email: response["data"]['email'],
          emailVerificationCode: response["data"]["emailVerificationCode"],
          firstName: response["data"]["firstName"],
          gender: response["data"]["gender"],
          lastName: response["data"]["lastName"],
          token: token);
      _userDataService.setUser(user: user);

      nameValue = user.shopName;
      emailValue = user.email;
      addressValue = response["data"]["shopAddress"];
      numberValue = response["data"]["shopNumber"];

      notifyListeners();
      logger.v(response);
    } else {
      _snackBarService.showSnackbar(message: "Error getting user profile");
    }
    setBusy(false);
  }

  void pop() {
    _navigationService.back();
  }

  @override
  void setFormStatus() {}
}
