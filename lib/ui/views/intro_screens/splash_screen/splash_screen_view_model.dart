import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/constants/app_constant.dart';
import 'package:storeload/core/services/localstorage/shared_preference_service.dart';

class SplashScreenViewModel extends BaseViewModel{
  final _sharedPreferenceService = locator<SharedPreferencesService>();
  final _navigationService = locator<NavigationService>();

  SplashScreenViewModel(){
    initialize();
  }

  Future<void> initialize() async{
    final userOnboarded = await _sharedPreferenceService.getData(AppConstant.isOnboarded);
    final userSignedUp = await _sharedPreferenceService.getData(AppConstant.userSignedUp);
    final userLoggedIn = await _sharedPreferenceService.getData(AppConstant.userLoggedIN);
    final token = await _sharedPreferenceService.getData(AppConstant.token);

    await Future.delayed(const Duration(seconds: 2),(){
      if(token != null){
     _navigationService.clearStackAndShow(Routes.homeScreenView);

      } else if (userOnboarded == null){
        _navigationService.replaceWith(Routes.onBoarding);
      } else if(userOnboarded != null && userSignedUp == null ){
        _navigationService.clearStackAndShow(Routes.signUP);
      } else if(userOnboarded != null && userSignedUp != null && userLoggedIn != null ){
        _navigationService.clearStackAndShow(Routes.signIN);
      }

    });


  }
}