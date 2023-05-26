import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/constants/app_constant.dart';
import 'package:storeload/core/services/localstorage/shared_preference_service.dart';

class OnBoardingScreenViewModel extends BaseViewModel{
  final _sharedPreferenceService = locator<SharedPreferencesService>();
  final _navigationService = locator<NavigationService>();

  void navigateToSignUpScreen(){
    _sharedPreferenceService.saveData(NavigationConstant.isOnboarded, true);
    _navigationService.clearStackAndShow(Routes.signUP);
  }
}