import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';

class ContactUsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  bool _isSendAMessage = false;

  bool get isSendAMessage => _isSendAMessage;

  void pop(){
    _navigationService.back();
  }

  void sendAMessage() {
    _isSendAMessage = !_isSendAMessage;
    notifyListeners();
  }

}