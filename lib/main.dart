
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.router.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/views/authentication/reset_password/reset_password.dart';
import 'package:storeload/ui/views/widgets/set_up_dialog_ui.dart';

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
                home:  ResetPaswword(),
       // initialRoute: Routes.forgotPassword,
       // onGenerateRoute: StackedRouter().onGenerateRoute,
      //  navigatorKey: StackedService.navigatorKey,

      ),
    );
  }
}
