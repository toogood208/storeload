// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/test_styles.dart';

class MyCheckBox extends StatefulWidget {
  MyCheckBox({Key? key, required this.listTileCheckBox}) : super(key: key);
  bool?
      listTileCheckBox; //To access this variable we use widget. in state class below
  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Align(
      //Use Align so that our Container does not get all width as it happens in ListView
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              checkColor: Colors.white,
              activeColor: kBackgroundColor,
              value: widget.listTileCheckBox,
              onChanged: (val) {
                setState(() => widget.listTileCheckBox = val);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Text(
                "Remember me",
                style: kAmulya12Regular.copyWith(color: kTextColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
