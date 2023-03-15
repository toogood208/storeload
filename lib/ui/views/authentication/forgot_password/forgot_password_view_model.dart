import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:storeload/app/app.locator.dart';
import 'package:storeload/app/app.logger.dart';
import 'package:storeload/ui/views/widgets/otp_dialog.dart';
import 'package:storeload/ui/views/widgets/set_up_dialog_ui.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  final _dialog = locator<DialogService>();
  final _log = getLogger("ForgotPasswordViewModel");

  Future showBasicDialog() async {
    final response = await _dialog.showCustomDialog(
        data: OTPDialogStatus.success,
        variant: DialogType.otpDialog,
        secondaryButtonTitle: "Exit",
        mainButtonTitle: "Retry");
    _log.v(response?.confirmed);
  }
}
