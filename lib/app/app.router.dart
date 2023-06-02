// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/cupertino.dart' as _i20;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i21;
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
import 'package:storeload/ui/views/cart/cart_view.dart' as _i19;
import 'package:storeload/ui/views/contact_us/contact_us_view.dart' as _i15;
import 'package:storeload/ui/views/faq/faq_view.dart' as _i17;
import 'package:storeload/ui/views/Home_Screen/home_screen_view.dart' as _i10;
import 'package:storeload/ui/views/intro_screens/onboarding/onboarding.dart'
    as _i5;
import 'package:storeload/ui/views/intro_screens/splash_screen/splash_screen.dart'
    as _i4;
import 'package:storeload/ui/views/privacy_policy/privacy_policy_view.dart'
    as _i16;
import 'package:storeload/ui/views/product_category/product_category_view.dart'
    as _i13;
import 'package:storeload/ui/views/product_detail/product_detail_screen_view.dart'
    as _i11;
import 'package:storeload/ui/views/profile_screen/profile_screen_view.dart'
    as _i12;
import 'package:storeload/ui/views/shop_information/shop_information_view.dart'
    as _i14;
import 'package:storeload/ui/views/terms_of_service/terms_of_service_view.dart'
    as _i18;

class Routes {
  static const forgotPassword = '/forgot-password';

  static const firstStepView = '/first-step-view';

  static const splashScreenView = '/';

  static const onBoarding = '/on-boarding';

  static const signIN = '/sign-iN';

  static const signUP = '/sign-uP';

  static const resetPaswword = '/reset-paswword';

  static const resetEmailPaswword = '/reset-email-paswword';

  static const homeScreenView = '/home-screen-view';

  static const productDetailScreenView = '/product-detail-screen-view';

  static const profileScreenView = '/profile-screen-view';

  static const productCategoryView = '/product-category-view';

  static const shopInformationView = '/shop-information-view';

  static const contactUsView = '/contact-us-view';

  static const privacyPolicyView = '/privacy-policy-view';

  static const faqView = '/faq-view';

  static const termsOfServiceView = '/terms-of-service-view';

  static const cartView = '/cart-view';

  static const all = <String>{
    forgotPassword,
    firstStepView,
    splashScreenView,
    onBoarding,
    signIN,
    signUP,
    resetPaswword,
    resetEmailPaswword,
    homeScreenView,
    productDetailScreenView,
    profileScreenView,
    productCategoryView,
    shopInformationView,
    contactUsView,
    privacyPolicyView,
    faqView,
    termsOfServiceView,
    cartView,
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
    _i1.RouteDef(
      Routes.homeScreenView,
      page: _i10.HomeScreenView,
    ),
    _i1.RouteDef(
      Routes.productDetailScreenView,
      page: _i11.ProductDetailScreenView,
    ),
    _i1.RouteDef(
      Routes.profileScreenView,
      page: _i12.ProfileScreenView,
    ),
    _i1.RouteDef(
      Routes.productCategoryView,
      page: _i13.ProductCategoryView,
    ),
    _i1.RouteDef(
      Routes.shopInformationView,
      page: _i14.ShopInformationView,
    ),
    _i1.RouteDef(
      Routes.contactUsView,
      page: _i15.ContactUsView,
    ),
    _i1.RouteDef(
      Routes.privacyPolicyView,
      page: _i16.PrivacyPolicyView,
    ),
    _i1.RouteDef(
      Routes.faqView,
      page: _i17.FaqView,
    ),
    _i1.RouteDef(
      Routes.termsOfServiceView,
      page: _i18.TermsOfServiceView,
    ),
    _i1.RouteDef(
      Routes.cartView,
      page: _i19.CartView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.ForgotPassword: (data) {
      final args = data.getArgs<ForgotPasswordArguments>(
        orElse: () => const ForgotPasswordArguments(),
      );
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            _i2.ForgotPassword(key: args.key, email: args.email),
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
        builder: (context) =>
            _i8.ResetPaswword(key: args.key, userId: args.userId),
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
    _i10.HomeScreenView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i10.HomeScreenView(),
        settings: data,
      );
    },
    _i11.ProductDetailScreenView: (data) {
      final args =
          data.getArgs<ProductDetailScreenViewArguments>(nullOk: false);
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            _i11.ProductDetailScreenView(key: args.key, product: args.product),
        settings: data,
      );
    },
    _i12.ProfileScreenView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i12.ProfileScreenView(),
        settings: data,
      );
    },
    _i13.ProductCategoryView: (data) {
      final args = data.getArgs<ProductCategoryViewArguments>(nullOk: false);
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            _i13.ProductCategoryView(key: args.key, category: args.category),
        settings: data,
      );
    },
    _i14.ShopInformationView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i14.ShopInformationView(),
        settings: data,
      );
    },
    _i15.ContactUsView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i15.ContactUsView(),
        settings: data,
      );
    },
    _i16.PrivacyPolicyView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i16.PrivacyPolicyView(),
        settings: data,
      );
    },
    _i17.FaqView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i17.FaqView(),
        settings: data,
      );
    },
    _i18.TermsOfServiceView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i18.TermsOfServiceView(),
        settings: data,
      );
    },
    _i19.CartView: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i19.CartView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class ForgotPasswordArguments {
  const ForgotPasswordArguments({
    this.key,
    this.email,
  });

  final _i20.Key? key;

  final String? email;

  @override
  String toString() {
    return '{"key": "$key", "email": "$email"}';
  }

  @override
  bool operator ==(covariant ForgotPasswordArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.email == email;
  }

  @override
  int get hashCode {
    return key.hashCode ^ email.hashCode;
  }
}

class FirstStepViewArguments {
  const FirstStepViewArguments({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant FirstStepViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class SignINArguments {
  const SignINArguments({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant SignINArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class SignUPArguments {
  const SignUPArguments({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant SignUPArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class ResetPaswwordArguments {
  const ResetPaswwordArguments({
    this.key,
    this.userId,
  });

  final _i20.Key? key;

  final String? userId;

  @override
  String toString() {
    return '{"key": "$key", "userId": "$userId"}';
  }

  @override
  bool operator ==(covariant ResetPaswwordArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.userId == userId;
  }

  @override
  int get hashCode {
    return key.hashCode ^ userId.hashCode;
  }
}

class ResetEmailPaswwordArguments {
  const ResetEmailPaswwordArguments({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant ResetEmailPaswwordArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class ProductDetailScreenViewArguments {
  const ProductDetailScreenViewArguments({
    this.key,
    required this.product,
  });

  final _i20.Key? key;

  final dynamic product;

  @override
  String toString() {
    return '{"key": "$key", "product": "$product"}';
  }

  @override
  bool operator ==(covariant ProductDetailScreenViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.product == product;
  }

  @override
  int get hashCode {
    return key.hashCode ^ product.hashCode;
  }
}

class ProductCategoryViewArguments {
  const ProductCategoryViewArguments({
    this.key,
    required this.category,
  });

  final _i20.Key? key;

  final String category;

  @override
  String toString() {
    return '{"key": "$key", "category": "$category"}';
  }

  @override
  bool operator ==(covariant ProductCategoryViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.category == category;
  }

  @override
  int get hashCode {
    return key.hashCode ^ category.hashCode;
  }
}

extension NavigatorStateExtension on _i21.NavigationService {
  Future<dynamic> navigateToForgotPassword({
    _i20.Key? key,
    String? email,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.forgotPassword,
        arguments: ForgotPasswordArguments(key: key, email: email),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFirstStepView({
    _i20.Key? key,
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
    _i20.Key? key,
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
    _i20.Key? key,
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
    _i20.Key? key,
    String? userId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.resetPaswword,
        arguments: ResetPaswwordArguments(key: key, userId: userId),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToResetEmailPaswword({
    _i20.Key? key,
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

  Future<dynamic> navigateToHomeScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProductDetailScreenView({
    _i20.Key? key,
    required dynamic product,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.productDetailScreenView,
        arguments: ProductDetailScreenViewArguments(key: key, product: product),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProductCategoryView({
    _i20.Key? key,
    required String category,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.productCategoryView,
        arguments: ProductCategoryViewArguments(key: key, category: category),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToShopInformationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.shopInformationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToContactUsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.contactUsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPrivacyPolicyView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.privacyPolicyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFaqView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.faqView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTermsOfServiceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.termsOfServiceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.cartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithForgotPassword({
    _i20.Key? key,
    String? email,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.forgotPassword,
        arguments: ForgotPasswordArguments(key: key, email: email),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFirstStepView({
    _i20.Key? key,
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
    _i20.Key? key,
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
    _i20.Key? key,
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
    _i20.Key? key,
    String? userId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.resetPaswword,
        arguments: ResetPaswwordArguments(key: key, userId: userId),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithResetEmailPaswword({
    _i20.Key? key,
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

  Future<dynamic> replaceWithHomeScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProductDetailScreenView({
    _i20.Key? key,
    required dynamic product,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.productDetailScreenView,
        arguments: ProductDetailScreenViewArguments(key: key, product: product),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProductCategoryView({
    _i20.Key? key,
    required String category,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.productCategoryView,
        arguments: ProductCategoryViewArguments(key: key, category: category),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithShopInformationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.shopInformationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithContactUsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.contactUsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPrivacyPolicyView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.privacyPolicyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFaqView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.faqView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTermsOfServiceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.termsOfServiceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.cartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
