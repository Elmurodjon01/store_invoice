

import 'package:go_router/go_router.dart';
import 'package:pizza_planet/presentation/authentication/auth_page.dart';
import 'package:pizza_planet/presentation/authentication/forgotPasswordPage.dart';
import 'package:pizza_planet/presentation/authentication/sign_in_page.dart';
import 'package:pizza_planet/presentation/authentication/sign_up_page.dart';
import 'package:pizza_planet/presentation/mapPage.dart';
import 'package:pizza_planet/presentation/notification_page.dart';
import 'package:pizza_planet/presentation/product_refill_page.dart';
import 'package:pizza_planet/presentation/sendNotification.dart';
import 'package:pizza_planet/presentation/splash_page.dart';

import '../../presentation/main_page.dart';
import '../../presentation/noInternetPage.dart';

enum Screens {
  authPage,
  signInPage,
  signUpPage,
  mainPage,
  refillPage,
  mapPage,
  splashPage,
  forgotPasswordPage,
  noInternetPage,
  notificationsPage,
  sendNotificaiton,
}

final router = GoRouter(
  initialLocation: '/splashPage',
    routes: [
      GoRoute(
        path: '/splashPage',
        name: Screens.splashPage.name,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: '/authPage',
        name: Screens.authPage.name,
        builder: (context, state) => const AuthPage(),
      ),
  GoRoute(
    path: '/signInPage',
    name: Screens.signInPage.name,
    builder: (context, state) => const SignInPage(),
  ),
      GoRoute(
        path: '/signUpPage',
        name: Screens.signUpPage.name,
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        path: '/mainPage',
        name: Screens.mainPage.name,
        builder: (context, state) => const MainPage(),
      ),
      GoRoute(
        path: '/refillPage',
        name: Screens.refillPage.name,
        builder: (context, state) => const ProductRefillPage(),
      ),
      GoRoute(
        path: '/mapPage',
        name: Screens.mapPage.name,
        builder: (context, state) =>  const MapPage(),
      ),
      GoRoute(
        path: '/forgotPasswordPage',
        name: Screens.forgotPasswordPage.name,
        builder: (context, state) =>  const ForgotPasswordPage(),
      ),
      GoRoute(
        path: '/noInternetPage',
        name: Screens.noInternetPage.name,
        builder: (context, state) => const NoInternetPage(),
      ),
      //  GoRoute(
      //   path: '/notificationsPage',
      //   name: Screens.notificationsPage.name,
      //   builder: (context, state) =>  NotificationsPage(
      //    payload: state.queryParameters['payload']!
      //   ),
      // ),
      GoRoute(
        path: '/sendNotification',
        name: Screens.sendNotificaiton.name,
        builder: (context, state) => const SendNotification(),
      ),


],);
