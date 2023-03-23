import 'package:storeload/core/models/user.dart';

class UserDataService {
  late UserClass _user;

  UserClass get user => _user;

  void setUser({required UserClass user}) {
    _user = user;
  }

  
  
}
