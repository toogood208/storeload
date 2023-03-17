
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/core/models/create_user_model.dart';
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
}
