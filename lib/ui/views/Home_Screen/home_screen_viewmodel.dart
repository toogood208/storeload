import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/models/user.dart';
import 'package:storeload/core/services/localstorage/persistent_storage_service.dart';

import '../../../core/services/user_data_service/user_data_service.dart';

class HomeScreenViewModel extends BaseViewModel {
  final _userDataService = locator<UserDataService>();
  final _persistentStorageService = locator<PersistentStorageService>();
  final _navigationService = locator<NavigationService>();
  final _snackbarService = locator<SnackbarService>();
  late Data user;

  
  void init() {
    user = _userDataService.user;
    notifyListeners();
  }

  void logout() {
    _persistentStorageService.userToken = '';
    _navigationService.replaceWith(Routes.signIN);
    _snackbarService.showSnackbar(message: 'Logged out successfully');
  }
}
