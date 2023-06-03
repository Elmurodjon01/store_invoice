import 'package:quickalert/quickalert.dart';
import 'package:flutter/material.dart';

loadAnimation(
    {required BuildContext context,
    void Function()? onConfirmBtnTap,
    void Function()? onCancelBtnTap}) {
  QuickAlert.show(
    context: context,
    type: QuickAlertType.confirm,
    text: 'do you want to submit? if so please use the service after 45 seconds!',
    confirmBtnText: 'Yes',
    cancelBtnText: 'No',
    confirmBtnColor: Colors.green,
    onConfirmBtnTap: onConfirmBtnTap,
    onCancelBtnTap: () => Navigator.pop(context),
  );
}
