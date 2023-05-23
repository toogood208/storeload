import 'package:flutter/material.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/test_styles.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    this.actions,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);
  final String title;
  final List<Widget>? actions;

  @override
  final Size preferredSize;

  @override
  CustomAppBarState createState() => CustomAppBarState();
}

class CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kWhiteColor,
      automaticallyImplyLeading: true,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: kBackgroundColor,
      ),
      actions: widget.actions,
      title: Text(
        widget.title,
        style: kClashGrotesk20Medium.copyWith(
          color: kTextColor,
        ),
      ),
      elevation: 0,
    );
  }
}
