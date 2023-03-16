// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/views/account_setup/first_step/first_step_view.dart';
import 'package:storeload/ui/views/authentication/forgot_password/forgot_password.dart';
import 'package:storeload/ui/views/authentication/signin/sign_in.dart';
import 'package:storeload/ui/views/authentication/signup/sign_up.dart';
import 'package:storeload/ui/views/widgets/set_up_dialog_ui.dart';

import 'app/app.router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  setUpDialogUI();
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
                )),
        initialRoute: Routes.firstStepView,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        navigatorKey: StackedService.navigatorKey,

        // home: FirstStepView(),
      ),
    );
  }
}
