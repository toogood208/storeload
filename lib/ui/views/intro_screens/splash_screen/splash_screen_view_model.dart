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
    final userOnboarded = await _sharedPreferenceService.getData(NavigationConstant.isOnboarded);
    final userSignedUp = await _sharedPreferenceService.getData(NavigationConstant.userSignedUp);

    await Future.delayed(const Duration(seconds: 2),(){
      if (userOnboarded == null){
        _navigationService.replaceWith(Routes.onBoarding);
      } else if(userOnboarded != null && userSignedUp == null ){
        _navigationService.clearStackAndShow(Routes.signUP);

      }
    });


  }
}