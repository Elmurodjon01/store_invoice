import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthServices {
  static signOutUser(BuildContext context) {
    CoolAlert.show(
        context: context,
        type: CoolAlertType.confirm,
        onConfirmBtnTap: () => FirebaseAuth.instance.signOut(),
        onCancelBtnTap: () => Navigator.pop(context),
        title: '로그아웃하시겠습니까?');
  }

  static signupUser(String email, String password, BuildContext context) async {
    //TODO: there is issue

    try {
      showDialog(
          context: context,
          builder: (context) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          });
      // UserCredential userCredential =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // User? user = userCredential.user;
      // await user!.updateDisplayName(name);

      // await FirebaseAuth.instance.currentUser!.updateDisplayName(name);
      // await FirebaseAuth.instance.currentUser!.updateEmail(email);

      // await FirestoreServices.saveUser(name, email, userCredential.user!.uid);
      CoolAlert.show(
        context: context,
        type: CoolAlertType.success,
        title: 'Registration successful',
        // onConfirmBtnTap: () => showDialog(
        onConfirmBtnTap: () => Navigator.pop(context),
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
      showDialog(
          context: context,
          builder: (context) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          });
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.pop(context);
      CoolAlert.show(
        context: context,
        type: CoolAlertType.success,
        title: 'You are Logged in',
        loopAnimation: true,
        // onConfirmBtnTap: () => Navigator.pop(context),
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
