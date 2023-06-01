import 'package:go_router/go_router.dart';
import 'package:pizza_planet/presentation/authentication/auth_page.dart';
import 'package:pizza_planet/presentation/authentication/sign_in_page.dart';
import 'package:pizza_planet/presentation/authentication/sign_up_page.dart';
import 'package:pizza_planet/presentation/map.dart';
import 'package:pizza_planet/presentation/product_refill_page.dart';
import 'package:pizza_planet/presentation/splash_page.dart';

import '../../presentation/main_page.dart';

enum Screens {
  authPage,
  signInPage,
  signUpPage,
  mainPage,
  refillPage,
  mapPage,
  splashPage,
}

final router = GoRouter(
  initialLocation: '/splashPage',
    routes: [
      GoRoute(
        path: '/splashPage',
        name: Screens.splashPage.name,
        builder: (context, state) => SplashPage(),
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


],);
