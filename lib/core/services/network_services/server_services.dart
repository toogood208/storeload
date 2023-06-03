import 'package:storeload/app/app.locator.dart';
import 'package:storeload/core/models/cart_model/cart_model.dart';
import 'package:storeload/core/models/product_model/product_model.dart';
import 'package:storeload/core/models/search_product_model/search_product_model.dart';
import 'package:storeload/core/models/user.dart';
import 'package:storeload/core/services/network_services/api_service.dart';
import 'package:storeload/core/services/network_services/network_constant.dart';
import 'package:storeload/core/services/network_services/network_service.dart';

import '../../../app/app.logger.dart';

class ServerService {
  final log = getLogger("ServerService");
  final _apiService = locator<APIService>();
  final _networkFormatter = locator<NetworkService>();

  Future<bool> createUser({
    String? shopName,
    String? shopAddress,
    String? shopLGA,
    String? password,
  }) async {
    final response = await _networkFormatter.fmt(() {
      return _apiService.post(route: createUserEndpoint, body: {
        "shopName": shopName,
        "password": password,
        "shopAddress": shopAddress,
        "shopLGA": shopLGA,
      });
    });

    return response.fold((l) => false, (str) {
      return true;
    });
  }

  Future<User?> loginUser({
    String? shopName,
    String? password,
  }) async {
    final response = await _networkFormatter.fmt(() {
      return _apiService.post(route: signInUserEndpoint, body: {
        "shopName": shopName,
        "password": password,
      });
    });

    return response.fold((l) => null, (str) {
      final userResponse = User.fromJson(str);
      log.v(str);
      log.v(userResponse);
      return userResponse;
    });
  }

  Future userAccountSetup({
    String? firstName,
    String? lastName,
    String? gender,
    String? email,
    String? nin,
    required String token,
  }) async {
    final response = await _networkFormatter.fmt(() {
      return _apiService.put(
          userAccountSetupEndpoint,
          {
            "firstName": firstName!,
            "lastName": lastName!,
            "gender": gender!,
            "email": email!,
            "NIN": nin!,
          },
          bearerToken: token);
    });
    return response.fold((l) => null, (str) {
      // final responseStatus = jsonDecode(str);
      log.v(str);
      // log.v(responseStatus);
      return str;
    });
  }

  Future emailOtpVerification(
      {required String otp, required String token}) async {
    final response = await _networkFormatter.fmt(() {
      return _apiService
          .post(bearerToken: token, route: emailOtpVerificationEndpoint, body: {
        "code": otp,
      });
    });
    return response.fold((l) => null, (str) {
      log.v(str);
      return str;
    });
  }

  Future<User?> emailOtpVerificationForgotPassord({required String otp}) async {
    final response = await _networkFormatter.fmt(() {
      return _apiService
          .post(route: emailOtpVerificationForgotPasswordEndpoint, body: {
        "code": otp,
      });
    });
    return response.fold((l) => null, (str) {
      final dataResponse = User.fromJson(str);
      log.v(dataResponse);
      return dataResponse;
    });
  }

  Future<bool> clearCart(String token) async {
    final response = await _networkFormatter.fmt(() {
      return _apiService.delete(route: clearCartEndpoint, bearerToken: token);
    });
    return response.fold((l) => false, (r) => true);
  }

  Future<bool> deleteOrder(String token) async {
    final response = await _networkFormatter.fmt(() {
      return _apiService.delete(route: deleteOrderEndpoint, bearerToken: token);
    });
    return response.fold((l) => false, (r) => true);
  }

  Future<bool> resetPasswordEmail(String? email) async {
    final response = await _networkFormatter.fmt(() {
      return _apiService
          .post(route: emailOtpVerificationForgotEmailEndpoint, body: {
        "email": email,
      });
    });
    return response.fold((l) => false, (str) {
      log.v(str);
      return true;
    });
  }

  Future<bool> newResetPassword({
    String? userId,
    String? password,
  }) async {
    final response = await _networkFormatter.fmt(() {
      return _apiService.post(route: signInUserEndpoint, body: {
        "userId": userId,
        "password": password,
      });
    });

    return response.fold((l) => false, (str) {
      final userResponse = User.fromJson(str);
      log.v(str);
      log.v(userResponse);
      return true;
    });
  }

  Future<List<ProductDataModel>> getAllProducts(String token) async {
    final response = await _networkFormatter.fmt(() {
      return _apiService.get(route: getAllProductsEndpoint, bearerToken: token);
    });

    return response.fold((l) => [], (res) {
      // log.v(response);
      return ProductModel.fromJson(res).data;
    });
  }

  Future<List<CategoryDataModel>> getProductsByCategory(
      {required String token, required String category}) async {
    final response = await _networkFormatter.fmt(() {
      return _apiService.get(
          route: getProductByCategoryEndpoint,
          queryParameters: {
            "category": category,
          },
          bearerToken: token);
    });

    return response.fold((l) => [], (r) => ProductDataModel.fromJson(r).data);
  }

  Future<List<SearchCategoryDataModel>> getProductsBySearchText(
      {required String token, required String query}) async {
    final response = await _networkFormatter.fmt(() {
      return _apiService.get(
          route: getProductBySearchTextEndpoint,
          queryParameters: {
            "searchText": query,
          },
          bearerToken: token);
    });

    return response.fold((l) => [], (r) => SearchProductModel.fromJson(r).data);
  }

  Future<List<CartOrderedItemsModel>> getAllOrderPlacedByUser(
      String token) async {
    final response = await _networkFormatter.fmt(() {
      return _apiService.get(
          route: getOrdersByUserEndpoint, bearerToken: token);
    });

    return response.fold((l) => [], (r) {
      final cart = CartModel.fromJson(r);
      final data = CartDataModel.fromJson(cart.data);
      final orderedItems = data.orderedItems;

      log.v(orderedItems);
      return orderedItems;
    });
  }

  Future<Map<String, dynamic>?> getUserProfile({required String token}) async {
    final response = await _networkFormatter.fmt(() {
      return _apiService.get(route: getUserProfileEndpoint, bearerToken: token);
    });

    return response.fold((l) => null, (str) {
      // final userResponse = User.fromJson(str);
      log.v(str);
      // log.v(userResponse);
      return str;
    });
  }

  Future<bool> createOrder({
    required String token,
    required String productId,
    required int quantity,
    required String address,
  }) async {
    final response = await _networkFormatter.fmt(() {
      return _apiService.post(
          route: createOrderEndpoint,
          body: {
            "productId": productId,
            "quantity": quantity,
            "shippingAddress": address,
          },
          bearerToken: token);
    });

    return response.fold((l) => false, (r) => true);
  }
}
