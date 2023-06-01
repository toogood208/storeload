import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/constants/app_constant.dart';
import 'package:storeload/core/services/localstorage/shared_preference_service.dart';
import 'package:storeload/ui/views/widgets/set_up_dialog_ui.dart';

class ProfileScreenViewModel extends BaseViewModel {
  final _sharedPreferenceService = locator<SharedPreferencesService>();
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

  Future<void> logOut() async {
    final response = await _dialogService.showCustomDialog(
      variant: DialogType.logOutDialog,
    );
    if (response == null) return;
    if (response.confirmed) {
      _sharedPreferenceService.saveData(AppConstant.token, null);
      // _sharedPreferenceService.saveData(AppConstant.user, null);
      _sharedPreferenceService.saveData(AppConstant.userLoggedIN, false);
      _sharedPreferenceService.saveData(AppConstant.userSignedUp, false);
      _navigationService.clearStackAndShow(Routes.splashScreenView);
    } else {
      return;
    }
  }

  void navigateToShopInformation() {}

  void navigateToPrivacyPolicy() => _navigationService.navigateTo(
        Routes.privacyPolicyView,
      );

  void navigateToTermsOfService() =>
      _navigationService.navigateTo(Routes.termsOfServiceView);

  void navigateToContactUs() =>
      _navigationService.navigateTo(Routes.contactUsView);

  void navigateToFAQ() => _navigationService.navigateTo(Routes.faqView);
}
