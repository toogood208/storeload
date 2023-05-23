import 'package:flutter/material.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/test_styles.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    Key? key,
    required List<String> categories,
    required this.value,
    required this.onChanged,
  })  : _categories = categories,
        super(key: key);

  final List<String> _categories;
  final String value;
  final Function(String? value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: const EdgeInsets.only(left: 12),
            height: 40,
            child: DropdownButton(
              underline: const SizedBox(),
              value: value,
              items: _categories
                  .map(
                    (String item) => DropdownMenuItem(
                  value: item,
                  child: Text(item, style: kAmulya14Medium.copyWith(
                    color: kTextColor,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
              )
                  .toList(),
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}