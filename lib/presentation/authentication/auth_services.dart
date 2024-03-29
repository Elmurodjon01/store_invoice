import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pizza_planet/src/logic/go_router.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class AuthServices {


  static Future deleteUse (BuildContext context) async {
    CoolAlert.show(context: context, type: CoolAlertType.confirm,
      title: 'do you want to delete account?',
      onConfirmBtnTap: () async {
        User user = FirebaseAuth.instance.currentUser!;
        user.delete();
        context.pushReplacementNamed(Screens.signInPage.name);

      },
      onCancelBtnTap: ()=> context.canPop(),
    );

  }

  static Future forgotPassword (String email, BuildContext context)async {
    try {
      showDialog(
          context: context,
          builder: (context) {
            return const Center(
              child:  SimpleCircularProgressBar(
                size: 45,
                progressStrokeWidth: 9,
                progressColors: [Colors.red, Colors.blue],
                fullProgressColor: Colors.orange,
                animationDuration: 3,
              ),
            );
          });
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      Navigator.pop(context);
      CoolAlert.show(context: context, type: CoolAlertType.info,
          title: 'Reset password link sent! Check your email',
          onConfirmBtnTap: ()=> context.pushReplacementNamed(Screens.signInPage.name),);
    } on FirebaseAuthException catch (e){
      CoolAlert.show(context: context, type: CoolAlertType.info,
        title: e.message.toString(),
        onConfirmBtnTap: ()=> context.canPop(),

      );
    }
  }

  static signOutUser(BuildContext context) {
    CoolAlert.show(
        context: context,
        type: CoolAlertType.confirm,
        onConfirmBtnTap: () {
          FirebaseAuth.instance.signOut();
          context.pushReplacementNamed(Screens.signInPage.name);
        },
        onCancelBtnTap: () => context.canPop,
        title: 'log out?');
  }

  static signupUser(String email, String password, BuildContext context) async {
    //TODO: there is an issue with circular progress indicator. it is not popping even when the action is completed

    try {
      showDialog(
          context: context,
          builder: (context) {
            return const Center(
              child:  SimpleCircularProgressBar(
                size: 45,
                progressStrokeWidth: 9,
                progressColors: [Colors.red, Colors.blue],
                fullProgressColor: Colors.orange,
                animationDuration: 3,
              ),
            );
          });
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Navigator.pop(context);
      CoolAlert.show(
        context: context,
        type: CoolAlertType.info,
        title: 'Registration successful',
        // onConfirmBtnTap: () => showDialog(
        onConfirmBtnTap: () => context.pushReplacementNamed(Screens.mainPage.name),
        //     context: context,
        //     builder: (context) {
        //       return Center(
        //         child: Text('Please LogIn now'),
        //       );
        //     }),
        // onCancelBtnTap: () => Center(
        //   child: Text('cancel button'),
        // ),
        loopAnimation: true,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          title: 'Password Provided is too weak',
          loopAnimation: true,
          onConfirmBtnTap: () => context.canPop(),
        );
      } else if (e.code == 'email-already-in-use') {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          title: 'Email Provided already Exists, Please log in',
          loopAnimation: true,
          onConfirmBtnTap: () => context.canPop(),
        );
      }
    } catch (e) {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.success,
        title: e.toString(),
        loopAnimation: true,
        onConfirmBtnTap: ()=> context.canPop(),
      );
    }
  }

  static signinUser(String email, String password, BuildContext context, GlobalKey scaffoldKey, void Function()? onConfirm) async {
    try {
      showDialog(
          context: scaffoldKey.currentContext!,
          builder: (context) {
            return const Center(
              child:  SimpleCircularProgressBar(
                size: 45,
                progressStrokeWidth: 9,
                progressColors: [Colors.red, Colors.blue],
                fullProgressColor: Colors.orange,
                animationDuration: 3,
              ),
            );
          });
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.pop(context);
      CoolAlert.show(
        context: scaffoldKey.currentContext!,
        type: CoolAlertType.success,
        title: 'You are Logged in',
        loopAnimation: true,
        onConfirmBtnTap: onConfirm,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.error,
          title: 'No user Found with this Email',
          loopAnimation: true,
          onConfirmBtnTap: () => Navigator.pop(context),
        );
      } else if (e.code == 'wrong-password') {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.error,
          title: 'Password did not match',
          loopAnimation: true,
          onConfirmBtnTap: () => Navigator.pop(context),
        );
      }
    }
  }
}