import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/test_styles.dart';

class QuestionTile extends StatelessWidget {
  final String question;
  final String answer;
  const QuestionTile({super.key, required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(
                  text: 'Question:',
                  style: kAmulya16Medium.copyWith(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                TextSpan(
                  text: ' $question',
                  style: kAmulya16Medium.copyWith(
                    color: kTextColor20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])),
          SizedBox(height: 16.h),
          Text(
            answer,
            style: kAmulya16Medium.copyWith(
              color: kTextColor20,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 16.h),
          const Divider(
            color: kTextColor80,
            thickness: 1,
          )
        ]);
  }
}
