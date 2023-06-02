import 'package:easy_splash_screen/easy_splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pizza_planet/presentation/authentication/auth_page.dart';
import 'package:pizza_planet/presentation/main_page.dart';
import 'package:pizza_planet/src/logic/go_router.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/images/pizzagif.gif'),
      title: const Text(
        "피자 플래넷",

        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText:const Text("로딩중..."),
      navigator: Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          //TODO: error with navigating to auth page
          pageBuilder: (context, animation, secondaryAnimation) => const MainPage(),
        ),
      ),
      durationInSeconds: 5,
    );
  }
}
