import 'package:flutter/material.dart';
import 'package:pizza_planet/presentation/noInternetPage.dart';
import 'package:pizza_planet/src/logic/go_router.dart';
import 'package:pizza_planet/src/logic/map_provider.dart';
import 'package:pizza_planet/src/logic/provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // final gsheets = GSheets(credentials);
  // final fetchSpreadSheet = await gsheets.spreadsheet(sheetID);
  // var sheet = fetchSpreadSheet.worksheetByTitle('invoice');
  runApp(Phoenix(child: MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => SheetsLogic(),
    ),
    ChangeNotifierProvider(
      create: (context) => MapLogic(),
    ),
  ], child: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child){
        return StreamBuilder(stream: InternetConnectionChecker().connectionStatus.asStream(),
            builder: (context, snapshot){
          final connectivity = snapshot.data;
          if(connectivity == InternetConnectionStatus.disconnected){
            print('인터넷 없음');
            return const  NoInternetPage();
          }
          return child!;
          }
            ,);
      },
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
