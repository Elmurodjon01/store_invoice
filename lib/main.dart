import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:pizza_planet/src/model/constants.dart';
import 'package:pizza_planet/src/presentation/main_page.dart';

void main() async {
  final gsheets = GSheets(credentials);
  final fetchSpreadSheet = await gsheets.spreadsheet(sheetID);
  var sheet = fetchSpreadSheet.worksheetByTitle('invoice');
  await sheet?.values.insertValue('something', column: 1, row: 1);
  await sheet?.values.insertValue('Elmurodjon', column: 3, row: 2);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
