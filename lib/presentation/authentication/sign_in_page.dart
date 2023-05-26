// import 'package:cool_alert/cool_alert.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:pizza_planet/presentation/authentication/auth_services.dart';
// import 'package:pizza_planet/presentation/authentication/sign_up_page.dart';

// class SignInPage extends StatefulWidget {
//   const SignInPage({super.key});

//   @override
//   State<SignInPage> createState() => _SignInPageState();
// }

// class _SignInPageState extends State<SignInPage> {
//   TextEditingController passController = TextEditingController();
//   TextEditingController emailController = TextEditingController();

//   // errorMessage(String e) {
//   //   CoolAlert.show(
//   //     context: context,
//   //     type: CoolAlertType.error,
//   //     title: e,
//   //     text: 'User authentication',
//   //     loopAnimation: true,
//   //     onConfirmBtnTap: () => Navigator.pop(context),
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('SignIn'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             TextField(
//               controller: emailController,
//             ),
//             TextField(
//               controller: passController,
//             ),
//             MaterialButton(
//               onPressed: () => AuthServices.signinUser(
//                   emailController.text, passController.text, context),
//               child: const Text('Sign In'),
//             ),
//             const SizedBox(
//               height: 100,
//             ),
//             MaterialButton(
//               onPressed: () => Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const SignUpPage())),
//               child: const Text('Sign Up'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:pizza_planet/presentation/authentication/auth_services.dart';
import 'package:pizza_planet/utils/login_utils.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  // void initState() {
  //   nameController;
  //   passController;
  //
  //   super.initState();
  // }
  //@override
  // void dispose() {
  //   nameController.dispose();
  //   passController.dispose();
  //   super.dispose();
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03032b),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 140,
                  ),
                  Parts.avatar(),
                  const SizedBox(
                    height: 20,
                  ),
                  Parts.welcoming('Welcome Back!'),
                  const SizedBox(
                    height: 8,
                  ),
                  Parts.welcomingTwo(),
                  const SizedBox(
                    height: 70,
                  ),
                  Parts.reusableTextField(
                    emailController,
                    'User Name',
                    Icons.person_outline,
                    false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Parts.reusableTextField(
                    passController,
                    'Password',
                    Icons.lock_outline,
                    true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Parts.restorePass(),
                  const SizedBox(
                    height: 40,
                  ),
                  //Parts.arrow(pressed: _doLogin),
                  GestureDetector(
                    onTap: () => AuthServices.signinUser(
                        emailController.text.trim(),
                        passController.text.trim(),
                        context),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 45,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),

                  Parts.ask(context, 'Don\'t have an account? ', 'SIGN UP'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  // void _doLogin(){
  //   String username = nameController.text.toString().trim();
  //   String password = passController.text.toString().trim();

  //     var box = Hive.box('test_database');

  //     box.put('username', username);
  //     box.put('password', password);
  //     String id = box.get('username');
  //     String pw = box.get('password');
  //     print(id);
  //     print(pw);

  // }
}
