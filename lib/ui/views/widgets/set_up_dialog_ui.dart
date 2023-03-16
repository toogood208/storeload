import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/ui/views/widgets/email_otp_dialog.dart';
import 'package:storeload/ui/views/widgets/otp_dialog.dart';

enum DialogType { otpDialog, emailOtpDialog }


void setUpDialogUI() {
  final dialogService = locator<DialogService>();
  final builders = {
    DialogType.otpDialog: (BuildContext context, DialogRequest request,
            Function(DialogResponse) completer) =>
        OTPDialog(request: request, completer: completer),
    DialogType.emailOtpDialog: (BuildContext context, DialogRequest request,
            Function(DialogResponse) completer) =>
        EmailDialog(request: request, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}


