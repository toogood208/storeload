import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/views/cart/cart_view_model.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CartViewModel>.reactive(
      viewModelBuilder: () => CartViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
         
        );
      },
    );
  }
}
