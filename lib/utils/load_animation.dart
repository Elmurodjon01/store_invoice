

import 'package:quickalert/quickalert.dart';
import 'package:flutter/material.dart';

loadAnimation({
  required BuildContext context,
  void Function()? onConfirmBtnTap,
  void Function()? onCancelBtnTap
}){
  QuickAlert.show(
    context: context,
    type: QuickAlertType.confirm,
    text: '삽입한 데이터를 저장하시겠습니까?',
    confirmBtnText: '네',
    cancelBtnText: '아니요',
    confirmBtnColor: Colors.green,
    onConfirmBtnTap: onConfirmBtnTap,
    onCancelBtnTap: onCancelBtnTap,

  );
}