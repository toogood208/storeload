import 'package:storeload/core/constants/hive_boxes.dart';
import 'package:storeload/core/services/network_services/localstorage/local_storage_service.dart';

const String _saveUserTokenKey = 'SaveUserTokenKey';

class PersistentStorageService extends LocalStorageService {
  PersistentStorageService() : super(persistBox, 'PersistentStorageService');

  //Persist User Token
  String get userToken => getData(_saveUserTokenKey) ?? '';
  set userToken(String value) => saveData(_saveUserTokenKey, value);
}
