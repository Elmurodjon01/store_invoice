import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:pizza_planet/src/logic/go_router.dart';
import 'package:pizza_planet/src/logic/map_provider.dart';
import 'package:pizza_planet/src/logic/provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'model/constants.dart';

void main() async {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final gsheets = GSheets(credentials);
  final fetchSpreadSheet = await gsheets.spreadsheet(sheetID);
  var sheet = fetchSpreadSheet.worksheetByTitle('invoice');
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => SheetsLogic(),
    ),
    ChangeNotifierProvider(
      create: (context) => MapLogic(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
