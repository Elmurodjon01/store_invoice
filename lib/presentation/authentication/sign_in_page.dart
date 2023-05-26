import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pizza_planet/presentation/authentication/auth_services.dart';
import 'package:pizza_planet/presentation/authentication/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  // errorMessage(String e) {
  //   CoolAlert.show(
  //     context: context,
  //     type: CoolAlertType.error,
  //     title: e,
  //     text: 'User authentication',
  //     loopAnimation: true,
  //     onConfirmBtnTap: () => Navigator.pop(context),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignIn'),
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
              onPressed: () => AuthServices.signinUser(
                  emailController.text, passController.text, context),
              child: const Text('Sign In'),
            ),
            const SizedBox(
              height: 100,
            ),
            MaterialButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUpPage())),
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
