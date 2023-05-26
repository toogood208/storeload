import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/core/services/localstorage/local_storage_service.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/views/widgets/set_up_dialog_ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  setUpDialogUI();
  await openHiveBoxes();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'StoreReload',
        theme: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: kBackgroundColor,
              ),
        ),
       initialRoute: Routes.splashScreenView,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        navigatorKey: StackedService.navigatorKey,
      ),
    );
  }
}
