import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';

class LogOutDialog extends StatelessWidget {
  const LogOutDialog(
      {super.key, required this.request, required this.completer});
  final DialogRequest request;
  final Function(DialogResponse) completer;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Row(
        children: [
          const Icon(Icons.info_sharp),
          SizedBox(width: 10.w),
          const Text("Are you sure you want to log out?"),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => completer(DialogResponse(confirmed: false)),
          child: const Text("No"),
        ),
        TextButton(
          onPressed: () => completer(DialogResponse(confirmed: true)),
          child: const Text("Yes"),
        ),
      ],
      actionsAlignment: MainAxisAlignment.center,
    );
  }
}
