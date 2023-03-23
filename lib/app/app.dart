import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/core/services/network_services/api_service.dart';
import 'package:storeload/core/services/network_services/localstorage/persistent_storage_service.dart';
import 'package:storeload/core/services/network_services/network_service.dart';
import 'package:storeload/core/services/network_services/server_services.dart';
import 'package:storeload/ui/views/account_setup/first_step/first_step_view.dart';
import 'package:storeload/ui/views/authentication/forgot_password/forgot_password.dart';
import 'package:storeload/ui/views/authentication/reset_email_password/reset_email_password.dart';
import 'package:storeload/ui/views/authentication/reset_password/reset_password.dart';
import 'package:storeload/ui/views/authentication/signin/sign_in.dart';
import 'package:storeload/ui/views/authentication/signup/sign_up.dart';
import 'package:storeload/ui/views/intro_screens/onboarding/onboarding.dart';
import 'package:storeload/ui/views/intro_screens/splash_screen/splash_screen.dart';

@StackedApp(
  routes: [
    AdaptiveRoute(page: ForgotPassword),
    AdaptiveRoute(page: FirstStepView),
    AdaptiveRoute(page: SplashScreenView,initial: true),
    AdaptiveRoute(page: OnBoarding),
    AdaptiveRoute(page: SignIN),
    AdaptiveRoute(page: SignUP),
    AdaptiveRoute(page: ResetPaswword),
    AdaptiveRoute(page: ResetEmailPaswword),
     
  
  ],
  dependencies: [
    LazySingleton(classType: DialogService),
     LazySingleton(classType: NavigationService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: APIService),
    LazySingleton(classType: NetworkService),
    LazySingleton(classType: ServerService),
    LazySingleton(classType: PersistentStorageService), 

  ],
  logger: StackedLogger(),
)
class App {}
