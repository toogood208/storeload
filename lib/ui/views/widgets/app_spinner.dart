import 'package:flutter/material.dart';
import 'package:storeload/ui/utils/colors.dart';

class AppSpinner extends StatelessWidget {
  final Color? color;
  final double? size;
  const AppSpinner({
    Key? key,
    this.color,
    this.size = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(kBackgroundColor),
        ),
      ),
    );
  }
}
