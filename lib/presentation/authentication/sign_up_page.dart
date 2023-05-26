import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:pizza_planet/presentation/authentication/auth_services.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: emailController,
            ),
            TextField(
              controller: passController,
            ),
            MaterialButton(
              onPressed: () async {
                AuthServices.signupUser(emailController.text,
                    passController.text, 'defaul name E', context);

                // final message = await AuthService().registration(
                //     email: emailController.text,
                //     password: passController.text,
                //     context: context);
                // if (message!.contains(errorMessage('Success'))) {
                //   Navigator.of(context).pushReplacement(MaterialPageRoute(
                //       builder: (context) => const MainPage()));
                // }
              },
              child: const Text('SignUp'),
            )
          ],
        ),
      ),
    );
  }

  errorMessage(String e) {
    CoolAlert.show(
      context: context,
      type: CoolAlertType.error,
      title: e,
      text: 'User authentication',
      loopAnimation: true,
      onConfirmBtnTap: () => Navigator.pop(context),
    );
  }
}

// class AuthService {
//   Future<String?> registration({
//     required String email,
//     required String password,
//     required BuildContext context,
//   }) async {
//     errorMessage(String e) {
//       CoolAlert.show(
//         context: context,
//         type: CoolAlertType.error,
//         title: e,
//         text: 'User authentication',
//         loopAnimation: true,
//         onConfirmBtnTap: () => Navigator.pop(context),
//       );
//     }

//     try {
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       errorMessage('Success');
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         errorMessage('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         errorMessage('The account already exists for that email.');
//       } else {
//         errorMessage(e.message!);
//       }
//     } catch (e) {
//       errorMessage(e.toString());
//     }
//     return null;
//   }
// }
