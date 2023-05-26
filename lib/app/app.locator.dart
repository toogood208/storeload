// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:stacked_services/src/dialog/dialog_service.dart';
import 'package:stacked_services/src/navigation/navigation_service.dart';
import 'package:stacked_services/src/snackbar/snackbar_service.dart';
import 'package:stacked_shared/stacked_shared.dart';

import '../core/services/localstorage/persistent_storage_service.dart';
import '../core/services/localstorage/shared_preference_service.dart';
import '../core/services/network_services/api_service.dart';
import '../core/services/network_services/network_service.dart';
import '../core/services/network_services/server_services.dart';
import '../core/services/user_data_service/user_data_service.dart';
import '../ui/views/Home_Screen/home_screen_viewmodel.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton(() => APIService());
  locator.registerLazySingleton(() => NetworkService());
  locator.registerLazySingleton(() => ServerService());
  locator.registerLazySingleton(() => PersistentStorageService());
  locator.registerLazySingleton(() => UserDataService());
  locator.registerLazySingleton(() => HomeScreenViewModel());
  final sharedPreferencesService = await SharedPreferencesService.getInstance();
  locator.registerSingleton(sharedPreferencesService);
}
