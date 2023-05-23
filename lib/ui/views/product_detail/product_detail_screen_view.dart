import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/core/constants/dummy_data/products.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/edge_insects.dart';
import 'package:storeload/ui/utils/test_styles.dart';
import 'package:storeload/ui/views/product_detail/product_detail_viem_model.dart';
import 'package:storeload/ui/views/product_detail/widget/page_view_image.dart';
import 'package:storeload/ui/views/product_detail/widget/product_detail_circle.dart';
import 'package:storeload/ui/views/widgets/app_button.dart';
import 'package:storeload/ui/views/widgets/custom_app_bar.dart';

import '../widgets/custom_drop_down.dart';

class ProductDetailScreenView extends StatelessWidget {
  const ProductDetailScreenView({Key? key, required this.product})
      : super(key: key);

  final Products product;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductDetailViewModel>.reactive(
        viewModelBuilder: () => ProductDetailViewModel(),
        builder: (context, model, child) {
          final controller =
              PageController(keepPage: false, initialPage: model.currentIndex);
          return Scaffold(
            appBar: const CustomAppBar(title: ""),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              padding: kAppPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // margin: EdgeInsets.only(top: screenSize.height * 0.07),
                    height: 261.h,
                    alignment: Alignment.center,
                    child: PageView(
                      onPageChanged: model.setCurrentIndex,
                      controller: controller,
                      children: <Widget>[
                        PageViewImage(
                          image: product.image,
                        ),
                        PageViewImage(
                          image: product.image,
                        ),
                        PageViewImage(
                          image: product.image,
                        ),
                        PageViewImage(
                          image: product.image,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      model.currentIndex == 0
                          ? const ActiveCircle()
                          : const InActiveCircle(),
                      SizedBox(width: 10.w),
                      model.currentIndex == 1
                          ? const ActiveCircle()
                          : const InActiveCircle(),
                      SizedBox(width: 10.w),
                      model.currentIndex == 2
                          ? const ActiveCircle()
                          : const InActiveCircle(),
                      SizedBox(width: 10.w),
                      model.currentIndex == 3
                          ? const ActiveCircle()
                          : const InActiveCircle(),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    "Milo chocolate drink refil 50g",
                    style: kAmulya18Regular.copyWith(
                      color: kTextColor,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            product.price,
                            style: kAmulya18Regular.copyWith(
                                color: kTextColor, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 8.w),
                          Text("Carton",
                              style: kAmulya14Regular.copyWith(
                                  color: kTextColor40,
                                  fontWeight: FontWeight.w300)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "QTY",
                            style: kAmulya14Regular.copyWith(
                              color: kTextColor40,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          CustomDropdown(
                            categories: model.quantity,
                            value: model.selectQuantity,
                            onChanged: ((value) =>
                                model.selectedQuantity(value!)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 31.h),
                  Text("This is 40kg product with great nutritional values.",
                  style: kAmulya14Regular.copyWith(color: kTextColor40,
                  fontWeight: FontWeight.w400),),
                  SizedBox(height: 124.h),
                  AppButton(title: "Add to Cart", onTap: (){},
                    width: double.infinity,)
                ],
              ),
            ),
          );
        });
  }
}
