import 'package:storeload/core/models/user.dart';

class UserDataService {
  late Data _user;

  Data get user => _user;

  void setUser({required Data user}) {
    _user = user;
  }

  
  
}
