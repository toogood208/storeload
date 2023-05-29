import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/edge_insects.dart';
import 'package:storeload/ui/views/product_category/product_category_view_model.dart';
import 'package:storeload/ui/views/widgets/custom_app_bar.dart';
import 'package:storeload/ui/views/widgets/product_card.dart';

import '../widgets/custome_home_page_icons.dart';

class ProductCategoryView extends StatelessWidget {
  const ProductCategoryView({Key? key, required this.category}) : super(key: key);
  final String category;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductCategoryViewModel>.reactive(
      onViewModelReady: (model)=> model.getProductByCategory(category),
        viewModelBuilder: ()=> ProductCategoryViewModel(),
        builder: (context,model,child){
          return  Scaffold(
            backgroundColor: kWhiteColor,
            appBar:  CustomAppBar(title: "", actions: [
              CustomHomePageIcon(
                onTap: () {},
                iconData: CupertinoIcons.search,
              ),
              CustomHomePageIcon(
                onTap: () {},
                iconData: CupertinoIcons.shopping_cart,
              ),
              CustomHomePageIcon(
                onTap: () {},
                iconData: CupertinoIcons.bell,
              ),
            ],),
            body: GridView.builder(
              itemCount: model.productList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.5
                  ),
                itemBuilder: (context,index){
                final productDetails = model.productList[index];
                  return Container(
                    padding: kAppPadding,
                    child: ProductCard(
                        onTap: () =>model.navigateToProductDetailsScreen(productDetails),
                        productImage: productDetails.image,
                        productName: productDetails.name,
                        productPrice: productDetails.price.toString()),
                  );
                }),
          );
        });

  }
}
