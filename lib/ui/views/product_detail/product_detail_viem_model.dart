import 'package:stacked/stacked.dart';

class ProductDetailViewModel extends BaseViewModel{
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  final List<String> _quantity = [
    "10",
    "20",
    "30",
    "40",
    "50",
  ];

  List<String> get quantity => _quantity;
  String selectQuantity = "10";

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void selectedQuantity(String quantity) {
    selectQuantity = quantity;
    notifyListeners();
  }
}