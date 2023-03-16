import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/ui/utils/colors.dart';
import 'package:storeload/ui/utils/test_styles.dart';
import 'package:storeload/ui/views/widgets/custom_text_button.dart';

enum OTPDialogStatus { success, failure }

class OTPDialog extends StatelessWidget {
  const OTPDialog({Key? key, required this.request, required this.completer})
      : super(key: key);
  final DialogRequest request;
  final Function(DialogResponse) completer;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          _getStatusIcon(request.data),
          SizedBox(
            height: 16.h,
          ),
          _getStatusText(request.data),
          SizedBox(
            height: 48.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (request.secondaryButtonTitle != null)
                TextButton(
                  onPressed: () => completer(DialogResponse(confirmed: false)),
                  child: Text(
                    request.secondaryButtonTitle!,
                    style: kAmulya14Regular.copyWith(color: kTextColor),
                  ),
                ),
              CustomTextButton(
                title: request.mainButtonTitle ?? "",
                onTap: () => completer(
                  DialogResponse(confirmed: true),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Icon _getStatusIcon(dynamic customData) {
  if (customData is OTPDialogStatus) {
    switch (customData) {
      case OTPDialogStatus.success:
        return Icon(
          Icons.rocket_launch_sharp,
          color: Colors.green,
          size: 100.r,
        );
      case OTPDialogStatus.failure:
        return Icon(
          Icons.close,
          color: Colors.red,
          size: 100.r,
        );
      default:
        return Icon(
          Icons.rocket_launch_sharp,
          color: Colors.green,
          size: 100.r,
        );
    }
  } else {
    return Icon(
      Icons.rocket_launch_sharp,
      color: Colors.green,
      size: 100.r,
    );
  }
}

Text _getStatusText(dynamic customData) {
  if (customData is OTPDialogStatus) {
    switch (customData) {
      case OTPDialogStatus.success:
        return Text(
          'Successful Verification',
          style: kAmulya16Medium.copyWith(color: Colors.green),
        );
      case OTPDialogStatus.failure:
        return Text(
          'Unsuccessful Verification',
          style: kAmulya16Medium.copyWith(color: Colors.red),
        );
      default:
        return Text(
          'Successful Verification',
          style: kAmulya16Medium.copyWith(color: Colors.green),
        );
    }
  } else {
    return Text(
      'Successful Verification',
      style: kAmulya16Medium.copyWith(color: Colors.green),
    );
  }
}
