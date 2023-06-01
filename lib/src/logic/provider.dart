// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';

import '../../model/constants.dart';
import 'package:intl/intl.dart';
class SheetsLogic extends ChangeNotifier {
  final user = FirebaseAuth.instance.currentUser!;
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('kk:mm:ss \n EEE d MMM').format(DateTime.now());
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
    required TextEditingController controller12,
    required TextEditingController controller13,
    required TextEditingController controller14,
    required TextEditingController controller15,
    required TextEditingController controller16,
    required TextEditingController controller17,
    required TextEditingController controller18,
    required TextEditingController controller19,
    required TextEditingController controller20,
    required TextEditingController controller21,
    required TextEditingController controller22,
    required TextEditingController controller23,
    required TextEditingController controller24,
    required TextEditingController controller25,
    required TextEditingController controller26,
    required TextEditingController controller27,
    required TextEditingController controller28,
    required TextEditingController controller29,
    required TextEditingController controller30,
    required TextEditingController controller31,
    required TextEditingController controller32,
    required TextEditingController controller33,
    required TextEditingController controller34,
    required TextEditingController controller35,
    required TextEditingController controller36,
    required TextEditingController controller37,
    required TextEditingController controller38,
    required TextEditingController controller39,
    required TextEditingController controller40,
    required TextEditingController controller41,
    required TextEditingController controller42,
    required TextEditingController controller43,
    required TextEditingController controller44,
    required TextEditingController controller45,
    required TextEditingController controller46,
    required TextEditingController controller47,
    required TextEditingController controller48,
    required TextEditingController controller49,
    required TextEditingController controller50,
    required TextEditingController controller51,
    required TextEditingController controller52,
    required TextEditingController controller53,
    required TextEditingController controller54,
    required TextEditingController controller55,
    required TextEditingController controller56,
    required TextEditingController controller57,
    required TextEditingController controller58,
    // required TextEditingController controller59,
    // required TextEditingController controller60,
    // required TextEditingController controller61,
    // required TextEditingController controller62,
    // required TextEditingController controller63,
    // required TextEditingController controller64,
    // required TextEditingController controller65,
    // required TextEditingController controller66,
    // required TextEditingController controller67,
    // required TextEditingController controller68,
    // required TextEditingController controller69,
    // required TextEditingController controller70,
    // required TextEditingController controller71,
    // required TextEditingController controller72,
    // required TextEditingController controller73,
    // required TextEditingController controller74,
    // required TextEditingController controller75,
    // required TextEditingController controller76,
    // required TextEditingController controller77,
  }) async {
    // final gsheets = GSheets(credentials);
    // final fetchSpreadSheet = await gsheets.spreadsheet(sheetID);
    final gsheets = GSheets(credentials);
    final fetchSpreadSheet = await gsheets.spreadsheet(sheetID);
    var sheet = fetchSpreadSheet.worksheetByTitle('invoice');

    // final sheet =  fetchSpreadSheet.worksheetByTitle('invoice');
    await sheet?.values
        .insertValue(controller1.text ?? 'empty', column: 2, row: 1);
    await sheet?.values
        .insertValue(controller2.text ?? 'empty', column: 2, row: 2);
    await sheet?.values
        .insertValue(controller3.text ?? 'empty', column: 2, row: 3);
    await sheet?.values
        .insertValue(controller4.text ?? 'empty', column: 2, row: 4);
    await sheet?.values
        .insertValue(controller5.text ?? 'empty', column: 2, row: 5);
    await sheet?.values
        .insertValue(controller6.text ?? 'empty', column: 2, row: 6);
    await sheet?.values
        .insertValue(controller7.text ?? 'empty', column: 2, row: 7);
    await sheet?.values
        .insertValue(controller8.text ?? 'empty', column: 2, row: 8);
    await sheet?.values
        .insertValue(controller9.text ?? 'empty', column: 2, row: 9);
    await sheet?.values
        .insertValue(controller10.text ?? 'empty', column: 2, row: 10);
    await sheet?.values
        .insertValue(controller11.text ?? 'empty', column: 2, row: 11);
    await sheet?.values
        .insertValue(controller12.text ?? 'empty', column: 2, row: 12);
    await sheet?.values
        .insertValue(controller13.text ?? 'empty', column: 2, row: 13);
    await sheet?.values
        .insertValue(controller14.text ?? 'empty', column: 2, row: 14);
    await sheet?.values
        .insertValue(controller15.text ?? 'empty', column: 2, row: 15);
    await sheet?.values
        .insertValue(controller16.text ?? 'empty', column: 2, row: 16);
    await sheet?.values
        .insertValue(controller17.text ?? 'empty', column: 2, row: 17);
    await sheet?.values
        .insertValue(controller18.text ?? 'empty', column: 2, row: 18);
    await sheet?.values
        .insertValue(controller19.text ?? 'empty', column: 2, row: 19);
    await sheet?.values
        .insertValue(controller20.text ?? 'empty', column: 2, row: 20);
    await sheet?.values
        .insertValue(controller21.text ?? 'empty', column: 4, row: 1);
    await sheet?.values
        .insertValue(controller22.text ?? 'empty', column: 4, row: 2);
    await sheet?.values
        .insertValue(controller23.text ?? 'empty', column: 4, row: 3);
    await sheet?.values
        .insertValue(controller24.text ?? 'empty', column: 4, row: 4);
    await sheet?.values
        .insertValue(controller25.text ?? 'empty', column: 4, row: 5);
    await sheet?.values
        .insertValue(controller26.text ?? 'empty', column: 4, row: 6);
    await sheet?.values
        .insertValue(controller27.text ?? 'empty', column: 4, row: 7);
    await sheet?.values
        .insertValue(controller28.text ?? 'empty', column: 4, row: 8);
    await sheet?.values
        .insertValue(controller29.text ?? 'empty', column: 4, row: 9);
    await sheet?.values
        .insertValue(controller30.text ?? 'empty', column: 4, row: 10);
    await sheet?.values
        .insertValue(controller31.text ?? 'empty', column: 4, row: 11);
    await sheet?.values
        .insertValue(controller32.text ?? 'empty', column: 4, row: 12);
    await sheet?.values
        .insertValue(controller33.text ?? 'empty', column: 4, row: 13);
    await sheet?.values
        .insertValue(controller34.text ?? 'empty', column: 4, row: 14);
    await sheet?.values
        .insertValue(controller35.text ?? 'empty', column: 4, row: 15);
    await sheet?.values
        .insertValue(controller36.text ?? 'empty', column: 4, row: 16);
    await sheet?.values
        .insertValue(controller37.text ?? 'empty', column: 4, row: 17);
    await sheet?.values
        .insertValue(controller38.text ?? 'empty', column: 4, row: 18);
    await sheet?.values
        .insertValue(controller39.text ?? 'empty', column: 4, row: 19);
    await sheet?.values
        .insertValue(controller40.text ?? 'empty', column: 4, row: 20);
    await sheet?.values
        .insertValue(controller41.text ?? 'empty', column: 2, row: 1);
    await sheet?.values
        .insertValue(controller42.text ?? 'empty', column: 6, row: 2);
    await sheet?.values
        .insertValue(controller43.text ?? 'empty', column: 6, row: 3);
    await sheet?.values
        .insertValue(controller44.text ?? 'empty', column: 6, row: 4);
    await sheet?.values
        .insertValue(controller45.text ?? 'empty', column: 6, row: 5);
    await sheet?.values
        .insertValue(controller46.text ?? 'empty', column: 6, row: 6);
    await sheet?.values
        .insertValue(controller47.text ?? 'empty', column: 6, row: 7);
    await sheet?.values
        .insertValue(controller48.text ?? 'empty', column: 6, row: 8);
    await sheet?.values
        .insertValue(controller49.text ?? 'empty', column: 6, row: 9);
    await sheet?.values
        .insertValue(controller50.text ?? 'empty', column: 6, row: 10);
    await sheet?.values
        .insertValue(controller51.text ?? 'empty', column: 6, row: 11);
    await sheet?.values
        .insertValue(controller52.text ?? 'empty', column: 6, row: 12);
    await sheet?.values
        .insertValue(controller53.text ?? 'empty', column: 6, row: 13);
    await sheet?.values
        .insertValue(controller54.text ?? 'empty', column: 6, row: 14);
    await sheet?.values
        .insertValue(controller55.text ?? 'empty', column: 6, row: 15);
    await sheet?.values
        .insertValue(controller56.text ?? 'empty', column: 6, row: 16);
    await sheet?.values
        .insertValue(controller57.text ?? 'empty', column: 6, row: 17);

    await sheet?.values
        .insertValue(formattedDate, column: 6, row: 18);

    await sheet?.values.insertValue(user.email!, column: 6, row: 19);
    // await sheet?.values.insertValue(controller60, column: 6, row: 20);
    // await sheet?.values.insertValue(controller61.text, column: 8, row: 1);
    // await sheet?.values.insertValue(controller62.text, column: 8, row: 2);
    // await sheet?.values.insertValue(controller63.text, column: 8, row: 3);
    // await sheet?.values.insertValue(controller64.text, column: 8, row: 4);
    // await sheet?.values.insertValue(controller65.text, column: 8, row: 5);
    // await sheet?.values.insertValue(controller66.text, column: 8, row: 6);
    // await sheet?.values.insertValue(controller67.text, column: 8, row: 7);
    // await sheet?.values.insertValue(controller68.text, column: 8, row: 8);
    // await sheet?.values.insertValue(controller69.text, column: 8, row: 9);
    // await sheet?.values.insertValue(controller70.text, column: 8, row: 10);
    // await sheet?.values.insertValue(controller71.text, column: 8, row: 11);
    // await sheet?.values.insertValue(controller72.text, column: 8, row: 12);
    // await sheet?.values.insertValue(controller73.text, column: 8, row: 13);
    // await sheet?.values.insertValue(controller74.text, column: 8, row: 14);
    // await sheet?.values.insertValue(controller75.text, column: 8, row: 15);
    // await sheet?.values.insertValue(controller76.text, column: 8, row: 16);
    // await sheet?.values.insertValue(controller77.text, column: 8, row: 17);
    await sheet?.values.insertColumn(1, first20Row);
    await sheet?.values.insertColumn(3, second20Row);
    await sheet?.values.insertColumn(5, third20Row);
    // await sheet?.values.insertValue(column: );
    // await sheet?.values.insertColumn(7, fourth20Row);
    print('saved');

    notifyListeners();
  }

  // Future<void> insertImage (String img) async{
  //   final fetchSpreadSheet = await gsheets.spreadsheet(sheetID);
  //
  //   var sheet = fetchSpreadSheet.worksheetByTitle('image');
  //   // await sheet?.values.insertColumn(1, img);
  //   final String image = base64.encode(await _readImageData('https://hips.hearstapps.com/hmg-prod/images/close-up-of-tulips-blooming-in-field-royalty-free-image-1584131603.jpg?crop=0.630xw:1.00xh;0.186xw,0&resize=1200:*'));
  //
  //   // Add image to Excel worksheet.
  //   await sheet.i
  //
  //   //Save and launch the excel.
  //   final List<int> bytes = workbook.saveAsStream();
  //
  //   //Dispose the document.
  //   workbook.dispose();
  // }
  // Future<void> _addImageToExcel() async {
  //   //Create a Excel document.
  //   //Creating a workbook.
  //   final Workbook workbook = Workbook();
  //
  //   //Accessing via index
  //   final Worksheet sheet = workbook.worksheets[0];
  //
  //   final String image = base64.encode(await _readImageData('image.jpg'));
  //
  //   // Add image to Excel worksheet.
  //   sheet.ins
  //
  //   //Save and launch the excel.
  //   final List<int> bytes = workbook.saveAsStream();
  //
  //   //Dispose the document.
  //   workbook.dispose();
  //
  //   //Get the storage folder location using path_provider package.
  //   final Directory directory = await getExternalStorageDirectory();
  //   //Get directory path
  //   final String path = directory.path;
  //   //Create an empty file to write Excel data
  //   final File file = File('$path/ExcelImage.xlsx');
  //   //Write Excel data
  //   await file.writeAsBytes(bytes, flush: true);
  //   //Launch the file (used open_file package)
  //   await OpenFile.open('$path/ExcelImage.xlsx');
  // }

  // searchFunc(String query) async {
  //   searchResults.clear();
  //   if (query.isEmpty) {
  //     return;
  //   }
  //   for (var i in allLabel) {
  //      searchFrom = i;
  //   }
  //   searchFrom.where((element) => element.)
  //   notifyListeners();

  // }
}
