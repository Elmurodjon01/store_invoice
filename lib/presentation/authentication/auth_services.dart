import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pizza_planet/presentation/main_page.dart';

class AuthServices {
  static signupUser(
      String email, String password, String name, BuildContext context) async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      await FirebaseAuth.instance.currentUser!.updateDisplayName(name);
      await FirebaseAuth.instance.currentUser!.updateEmail(email);
      // await FirestoreServices.saveUser(name, email, userCredential.user!.uid);
      CoolAlert.show(
        context: context,
        type: CoolAlertType.success,
        title: 'Registration successful',
        onConfirmBtnTap: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainPage())),
        loopAnimation: true,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          title: 'Password Provided is too weak',
          loopAnimation: true,
          // onConfirmBtnTap: () => Navigator.pop(context),
        );
      } else if (e.code == 'email-already-in-use') {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          title: 'Email Provided already Exists',
          loopAnimation: true,
          // onConfirmBtnTap: () => Navigator.pop(context),
        );
      }
    } catch (e) {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.success,
        title: e.toString(),
        loopAnimation: true,
      );
    }
  }

  static signinUser(String email, String password, BuildContext context) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      showDialog(
          context: context,
          builder: (context) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          });
      CoolAlert.show(
        context: context,
        type: CoolAlertType.success,
        title: 'You are Logged in',
        loopAnimation: true,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.error,
          title: 'No user Found with this Email',
          loopAnimation: true,
        );
      } else if (e.code == 'wrong-password') {
        CoolAlert.show(
          context: context,
          type: CoolAlertType.error,
          title: 'Password did not match',
          loopAnimation: true,
        );
      }
    }
  }
}

// void signInUser() async {
//   showDialog(
//       context: context,
//       builder: (context) => const Center(
//             child: CircularProgressIndicator(),
//           ));
//   try {
//     await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: emailController.text, password: passController.text);
//     Navigator.pop(context);
//   } on FirebaseAuthException catch (e) {
//     if (e.code == 'user-not-found') {
//       errorMessage('There is no user registered with this email');
//       print('there is no user found with this email');
//     } else if (e.code == 'wrong-password') {
//       errorMessage('Wrong password');
//       print('invalid password');
//     }
//   }
// }
