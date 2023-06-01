import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/edge_insects.dart';
import 'package:storeload/ui/utils/test_styles.dart';
import 'package:storeload/ui/views/faq/faq_viewmodel.dart';
import 'package:storeload/ui/views/faq/widgets/question_tile.dart';

class FaqView extends StatelessWidget {
  const FaqView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FaqViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: kAppPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32.h),
                Row(
                  children: [
                    InkWell(
                        onTap: model.pop, child: const Icon(Icons.arrow_back)),
                    SizedBox(width: 15.w),
                    Text(
                      'Frequently Asked Questions',
                      style: kClashGrotesk18Medium.copyWith(
                        color: kTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32.h),
                const QuestionTile(
                  question: 'What service does StoreReload provide?',
                  answer:
                      'Storereload is a Business to Business Marketplace that sell consumer products to retailers.',
                ),
                SizedBox(height: 32.h),
                const QuestionTile(
                  question:
                      'Can I fund my virtual wallet for future transactions?',
                  answer: 'Yes, you can.',
                ),
                SizedBox(height: 32.h),
                const QuestionTile(
                  question: 'Can I add my orders to cart for future checkout?',
                  answer: 'No, you cannot.',
                ),
                SizedBox(height: 32.h),
                const QuestionTile(
                  question: 'What do I need to do to get a loan?',
                  answer:
                      'You will have to provide your BVN and other information in order to access our loans.',
                ),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => FaqViewModel(),
    );
  }
}
