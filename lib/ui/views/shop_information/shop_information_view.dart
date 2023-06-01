import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/views/shop_information/shop_information_viewmodel.dart';

class ShopInformationView extends StatelessWidget {
 const ShopInformationView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<ShopInformationViewModel>.reactive(
     builder: (context, model, child) => Scaffold(),
     viewModelBuilder: () => ShopInformationViewModel(),
   );
 }
}