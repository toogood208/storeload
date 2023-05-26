import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/currency_symbol.dart';
import 'package:storeload/ui/utils/edge_insects.dart';
import 'package:storeload/ui/views/product_screen/product_screen_view_model.dart';
import 'package:storeload/ui/views/widgets/product_category_label_widget.dart';

import '../../../core/constants/dummy_data/product_categories.dart';
import '../../utils/test_styles.dart';

part 'widget/product_categories.dart';

class ProductScreenView extends StatelessWidget {
  const ProductScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductScreenViewModel>.reactive(
        viewModelBuilder: () => ProductScreenViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: kWhiteColor,
            body: Container(
              padding: kAppPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ProductCategoryWidget(),
                  SizedBox(height: 24.h),
                  Expanded(
                    child: ListView.builder(
                      itemCount: categories.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final label = categories[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            ProductCategoryLabelWidget(
                                label: label, onTap: () {}),
                            Container(
                              height:141.h,
                              margin:EdgeInsets.only(
                                right: 16.w,
                                top: 10.h,
                                bottom: 10.h,
                              ),

                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: model.products.length,
                                  physics: const ClampingScrollPhysics(),
                                  itemBuilder: (context, innerIndex){
                                  final productDetails = model.products[innerIndex].products[innerIndex].data[innerIndex];
                                  return GestureDetector(
                                    onTap: ()=>model.navigateToProductDetailsScreen(productDetails),
                                    child: ProductCard(
                                      productImage: productDetails.image!,
                                      productName: productDetails.name!,
                                      productPrice: productDetails.price!,
                                    ),
                                  );
                                  }),
                            ),
                          ],
                        );
                      },
                    ),
                  ),




                ],
              ),
            ),
          );
        });
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productPrice
  });
  final String productImage;
  final String productName;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(productImage),
        Text(
          productName,
          style: kAmulya14Regular.copyWith(color: kTextColor),
        ),
        Text(
          productPrice.currency(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
