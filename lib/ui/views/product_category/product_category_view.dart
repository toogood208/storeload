import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/edge_insects.dart';
import 'package:storeload/ui/views/product_category/product_category_view_model.dart';
import 'package:storeload/ui/views/widgets/custom_app_bar.dart';
import 'package:storeload/ui/views/widgets/empty_shimmer_widget.dart';
import 'package:storeload/ui/views/widgets/product_card.dart';

import '../../utils/test_styles.dart';
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
            body: model.isBusy? const EmptyGridShimmerWidget():
            Container(
              padding: kAppPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                    Text(category,style: kAmulya14Regular.copyWith(color: kTextColor),),
                  SizedBox(height: 8.h,),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: model.productList.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 0.5
                        ),
                      itemBuilder: (context,index){
                      final productDetails = model.productList[index];
                        return ProductCard(
                            onTap: () =>model.navigateToProductDetailsScreen(productDetails),
                            productImage: productDetails.image,
                            productName: productDetails.name,
                            productPrice: productDetails.price.toString());
                      }),
                ],
              ),
            ),
          );
        });

  }
}
