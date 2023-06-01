import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';

class FaqViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void pop(){
    _navigationService.back();
  }
}
