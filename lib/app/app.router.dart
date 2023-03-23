// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i10;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i11;
import 'package:storeload/ui/views/account_setup/first_step/first_step_view.dart'
    as _i3;
import 'package:storeload/ui/views/authentication/forgot_password/forgot_password.dart'
    as _i2;
import 'package:storeload/ui/views/authentication/reset_email_password/reset_email_password.dart'
    as _i9;
import 'package:storeload/ui/views/authentication/reset_password/reset_password.dart'
    as _i8;
import 'package:storeload/ui/views/authentication/signin/sign_in.dart' as _i6;
import 'package:storeload/ui/views/authentication/signup/sign_up.dart' as _i7;
import 'package:storeload/ui/views/intro_screens/onboarding/onboarding.dart'
    as _i5;
import 'package:storeload/ui/views/intro_screens/splash_screen/splash_screen.dart'
    as _i4;

class Routes {
  static const forgotPassword = '/forgot-password';

  static const firstStepView = '/first-step-view';

  static const splashScreenView = '/';

  static const onBoarding = '/on-boarding';

  static const signIN = '/sign-iN';

  static const signUP = '/sign-uP';

  static const resetPaswword = '/reset-paswword';

  static const resetEmailPaswword = '/reset-email-paswword';

  static const all = <String>{
    forgotPassword,
    firstStepView,
    splashScreenView,
    onBoarding,
    signIN,
    signUP,
    resetPaswword,
    resetEmailPaswword,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.forgotPassword,
      page: _i2.ForgotPassword,
    ),
    _i1.RouteDef(
      Routes.firstStepView,
      page: _i3.FirstStepView,
    ),
    _i1.RouteDef(
      Routes.splashScreenView,
      page: _i4.SplashScreenView,
    ),
    _i1.RouteDef(
      Routes.onBoarding,
      page: _i5.OnBoarding,
    ),
    _i1.RouteDef(
      Routes.signIN,
      page: _i6.SignIN,
    ),
    _i1.RouteDef(
      Routes.signUP,
      page: _i7.SignUP,
    ),
    _i1.RouteDef(
      Routes.resetPaswword,
      page: _i8.ResetPaswword,
    ),
    _i1.RouteDef(
      Routes.resetEmailPaswword,
      page: _i9.ResetEmailPaswword,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.ForgotPassword: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i2.ForgotPassword(),
        settings: data,
      );
    },
    _i3.FirstStepView: (data) {
      final args = data.getArgs<FirstStepViewArguments>(
        orElse: () => const FirstStepViewArguments(),
      );
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => _i3.FirstStepView(key: args.key),
        settings: data,
      );
    },
    _i4.SplashScreenView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i4.SplashScreenView(),
        settings: data,
      );
    },
    _i5.OnBoarding: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i5.OnBoarding(),
        settings: data,
      );
    },
    _i6.SignIN: (data) {
      final args = data.getArgs<SignINArguments>(
        orElse: () => const SignINArguments(),
      );
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => _i6.SignIN(key: args.key),
        settings: data,
      );
    },
    _i7.SignUP: (data) {
      final args = data.getArgs<SignUPArguments>(
        orElse: () => const SignUPArguments(),
      );
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => _i7.SignUP(key: args.key),
        settings: data,
      );
    },
    _i8.ResetPaswword: (data) {
      final args = data.getArgs<ResetPaswwordArguments>(
        orElse: () => const ResetPaswwordArguments(),
      );
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => _i8.ResetPaswword(key: args.key),
        settings: data,
      );
    },
    _i9.ResetEmailPaswword: (data) {
      final args = data.getArgs<ResetEmailPaswwordArguments>(
        orElse: () => const ResetEmailPaswwordArguments(),
      );
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => _i9.ResetEmailPaswword(key: args.key),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class FirstStepViewArguments {
  const FirstStepViewArguments({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }
}

class SignINArguments {
  const SignINArguments({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }
}

class SignUPArguments {
  const SignUPArguments({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }
}

class ResetPaswwordArguments {
  const ResetPaswwordArguments({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }
}

class ResetEmailPaswwordArguments {
  const ResetEmailPaswwordArguments({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }
}

extension NavigatorStateExtension on _i11.NavigationService {
  Future<dynamic> navigateToForgotPassword([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.forgotPassword,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFirstStepView({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.firstStepView,
        arguments: FirstStepViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSplashScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnBoarding([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onBoarding,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignIN({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.signIN,
        arguments: SignINArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignUP({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.signUP,
        arguments: SignUPArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToResetPaswword({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.resetPaswword,
        arguments: ResetPaswwordArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToResetEmailPaswword({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.resetEmailPaswword,
        arguments: ResetEmailPaswwordArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithForgotPassword([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.forgotPassword,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFirstStepView({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.firstStepView,
        arguments: FirstStepViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.splashScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnBoarding([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onBoarding,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignIN({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.signIN,
        arguments: SignINArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignUP({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.signUP,
        arguments: SignUPArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithResetPaswword({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.resetPaswword,
        arguments: ResetPaswwordArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithResetEmailPaswword({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.resetEmailPaswword,
        arguments: ResetEmailPaswwordArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
