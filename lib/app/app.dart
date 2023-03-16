import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/ui/views/account_setup/first_step/first_step_view.dart';
import 'package:storeload/ui/views/authentication/forgot_password/forgot_password.dart';

@StackedApp(
  routes: [
    AdaptiveRoute(page: ForgotPassword),
    AdaptiveRoute(page: FirstStepView),
  ],
  dependencies: [
    LazySingleton(classType: DialogService),
  ],
  logger: StackedLogger(),
)
class App {}
