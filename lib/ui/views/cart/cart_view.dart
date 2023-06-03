import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/core/models/cart_model/cart_model.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/currency_symbol.dart';
import 'package:storeload/ui/utils/edge_insects.dart';
import 'package:storeload/ui/utils/test_styles.dart';
import 'package:storeload/ui/views/cart/cart_view_model.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CartViewModel>.reactive(
      viewModelBuilder: () => CartViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: kWhiteColor,
          appBar: AppBar(
            backgroundColor: kWhiteColor,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("My Cart",
                  style:kClashGrotesk16Medium.copyWith(
                    color: kTextColor,
                  ) ,),
                TextButton(
                  onPressed: () {},
                  child: Text("clear cart",
                  style: kAmulya14Medium.copyWith(color: kTextColor40),),
                ),
              ],
            ),
          ),
          body: Container(
            padding: kAppPadding,
            child: ListView.builder(
              itemCount: viewModel.cart.length,
              itemBuilder: (context, index) {
                final orderedItems = viewModel.cart[index];
                CartProductItemModel orderedProduct =
                    CartProductItemModel.fromJson(orderedItems.productId);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.network(
                          orderedProduct.image,
                          height: 110.h,
                          width: 113.w,
                        ),
                        SizedBox(
                          width: 24.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              orderedProduct.name,
                              style: kAmulya14Regular.copyWith(
                                color: kTextColor,
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              orderedProduct.price.toString().currency(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 28.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "QTY",
                                      style: kAmulya14Regular.copyWith(
                                          color: kTextColor40),
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Text(
                                      orderedItems.quantity.toString(),
                                      style: kAmulya14Medium.copyWith(
                                          color: kTextColor),
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    const Icon(
                                      Icons.arrow_drop_down,
                                      color: kTextColor,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 42.w,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    "Remove",
                                    style: kAmulya14Regular.copyWith(
                                        color: kTextColor40),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Divider(
                      color: kTextColor60,
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
