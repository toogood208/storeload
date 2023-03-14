import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/ui/views/authentication/forgot_password/forgot_password.dart';

@StackedApp(
  routes: [
    AdaptiveRoute(page: ForgotPassword),
  ],
  dependencies: [
    LazySingleton(classType: DialogService),
  ],
  logger: StackedLogger(),
)
class App {}
