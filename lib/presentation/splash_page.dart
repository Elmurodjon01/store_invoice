import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:pizza_planet/model/constants.dart';
import 'package:pizza_planet/src/logic/go_router.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Hide the default splash screen
   FlutterNativeSplash.remove();
    // Delay for 3 seconds and then navigate to the home screen
    Future.delayed(const Duration(seconds: 3), () {
      context.pushReplacementNamed(Screens.authPage.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 280,
            ),
            SizedBox(
              height: 150,
                width: 150,
                child: Image.asset('assets/images/pizzagif.gif'),),
            const SizedBox(
              height: 320,
            ),
             const Column(
              children: [
                SimpleCircularProgressBar(
                  size: 45,
                  progressStrokeWidth: 9,
                  progressColors: [Colors.red, Colors.blue],
                  fullProgressColor: Colors.orange,
                  animationDuration: 2,
                ),
                Divider(),
                Text('Pizza Planet', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:easy_splash_screen/easy_splash_screen.dart';
//
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:pizza_planet/presentation/authentication/auth_page.dart';
// import 'package:pizza_planet/presentation/main_page.dart';
// import 'package:pizza_planet/src/logic/go_router.dart';
//
// class SplashPage extends StatefulWidget {
//   SplashPage({Key? key}) : super(key: key);
//
//   @override
//   _SplashPageState createState() => _SplashPageState();
// }
//
// class _SplashPageState extends State<SplashPage> {
//   @override
//   Widget build(BuildContext context) {
//     return EasySplashScreen(
//       logo: Image.asset('assets/images/pizzagif.gif'),
//       title: const Text(
//         "피자 플래넷",
//
//         style: TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       backgroundColor: Colors.grey.shade400,
//       showLoader: true,
//       loadingText:const Text("로딩중..."),
//       navigator: Navigator.of(context).pushReplacement(
//         PageRouteBuilder(
//           //TODO: error with navigating to auth page
//           pageBuilder: (context, animation, secondaryAnimation) => const MainPage(),
//         ),
//       ),
//       durationInSeconds: 5,
//     );
//   }
// }
