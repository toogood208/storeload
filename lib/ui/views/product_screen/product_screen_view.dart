
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/edge_insects.dart';
import 'package:storeload/ui/views/product_screen/product_screen_view_model.dart';
import 'package:storeload/ui/views/widgets/product_card.dart';
import 'package:storeload/ui/views/widgets/product_category_label_widget.dart';

import '../../utils/test_styles.dart';
import '../widgets/empty_shimmer_widget.dart';

part 'widget/product_categories.dart';

class ProductScreenView extends StatelessWidget {
  const ProductScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductScreenViewModel>.reactive(
        viewModelBuilder: () => ProductScreenViewModel(),
        builder: (context, model, child) {
          return model.isBusy?
              const EmptyShimmerWidget()
              :
            Scaffold(
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
                      padding: EdgeInsets.zero,
                      itemCount: model.products.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final label = model.pres[index];
                        final innerData = model.products[index].data;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ProductCategoryLabelWidget(
                                label: label, onTap: () {
                                   model.navigateToProductCategoryScreen(label);
                            }),
                            Container(
                              height: 141.h,
                              margin: EdgeInsets.only(
                                right: 16.w,
                                top: 10.h,
                                bottom: 10.h,
                              ),
                              child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: innerData.length,
                                  physics: const ClampingScrollPhysics(),
                                  itemBuilder: (context, innerIndex) {
                                    final productDetails =
                                        innerData[innerIndex];
                                    return ProductCard(
                                      onTap: () =>
                                          model.navigateToProductDetailsScreen(
                                              productDetails),
                                      productImage: productDetails.image!,
                                      productName: productDetails.name!,
                                      productPrice:
                                          productDetails.price!.toString(),
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


