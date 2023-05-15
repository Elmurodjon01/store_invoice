import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';

import '../../model/constants.dart';

class SheetsLogic extends ChangeNotifier {
  gsheetSubmit({
    required TextEditingController controller1,
    required TextEditingController controller2,
    required TextEditingController controller3,
    required TextEditingController controller4,
    required TextEditingController controller5,
    required TextEditingController controller6,
    required TextEditingController controller7,
    required TextEditingController controller8,
    required TextEditingController controller9,
    required TextEditingController controller10,
    required TextEditingController controller11,
    required TextEditingController controller13,
    required TextEditingController controller14,
    required TextEditingController controller15,
    required TextEditingController controller16,
    required TextEditingController controller17,
    required TextEditingController controller18,
    required TextEditingController controller19,
    required TextEditingController controller20,
  }) async {
    final gsheets = GSheets(credentials);
    final fetchSpreadSheet = await gsheets.spreadsheet(sheetID);
    var sheet = fetchSpreadSheet.worksheetByTitle('invoice');
    await sheet?.values.insertValue(controller1.text, column: 2, row: 1);
    await sheet?.values.insertValue(controller2.text, column: 2, row: 2);
    await sheet?.values.insertValue(controller3.text, column: 2, row: 3);
    await sheet?.values.insertValue(controller4.text, column: 2, row: 4);
    await sheet?.values.insertValue(controller5.text, column: 2, row: 5);
    await sheet?.values.insertValue(controller6.text, column: 2, row: 6);
    await sheet?.values.insertValue(controller7.text, column: 2, row: 7);
    await sheet?.values.insertValue(controller8.text, column: 2, row: 8);
    await sheet?.values.insertValue(controller9.text, column: 2, row: 9);
    await sheet?.values.insertValue(controller10.text, column: 2, row: 10);
    await sheet?.values.insertValue(controller11.text, column: 2, row: 11);

    await sheet?.values.insertColumn(1, first20Row);
    await sheet?.values.insertColumn(3, second20Row);
    await sheet?.values.insertColumn(5, third20Row);
    await sheet?.values.insertColumn(7, fourth20Row);
    print('saved');
    notifyListeners();
  }
}
