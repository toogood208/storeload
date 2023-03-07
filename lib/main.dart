import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeload/ui/views/splash_screen/splash_screen.dart';

void main() {
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
      builder: (context, child) => 
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'StoreReload',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreenView(),
      ),
    );
  }
}


