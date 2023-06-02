// import 'package:cool_alert/cool_alert.dart';
// import 'package:flutter/material.dart';
// import 'package:pizza_planet/presentation/authentication/auth_services.dart';

// class SignUpPage extends StatefulWidget {
//   const SignUpPage({super.key});

//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   TextEditingController passController = TextEditingController();
//   TextEditingController emailController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('SignUp'),
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
//               onPressed: () async {
//                 AuthServices.signupUser(emailController.text,
//                     passController.text, 'defaul name E', context);

//                 // final message = await AuthService().registration(
//                 //     email: emailController.text,
//                 //     password: passController.text,
//                 //     context: context);
//                 // if (message!.contains(errorMessage('Success'))) {
//                 //   Navigator.of(context).pushReplacement(MaterialPageRoute(
//                 //       builder: (context) => const MainPage()));
//                 // }
//               },
//               child: const Text('SignUp'),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   errorMessage(String e) {
//     CoolAlert.show(
//       context: context,
//       type: CoolAlertType.error,
//       title: e,
//       text: 'User authentication',
//       loopAnimation: true,
//       onConfirmBtnTap: () => Navigator.pop(context),
//     );
//   }
// }

import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pizza_planet/model/constants.dart';
import 'package:pizza_planet/presentation/authentication/auth_services.dart';
import 'package:pizza_planet/src/logic/go_router.dart';
import 'package:pizza_planet/utils/login_utils.dart';
//TODO: error after signing app, functions are not working properly
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  // static const signUpPage = 'signnuppage';
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

// final _nameController = TextEditingController();
final _emailController = TextEditingController();
// final _phoneController = TextEditingController();
final _passController = TextEditingController();

class _SignUpPageState extends State<SignUpPage> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 140,
                  ),
                  Parts.avatar('https://img1.pnghut.com/9/12/2/bmwJVnbivH/google-account-symbol-user-profile-icon-design-number.jpg'),
                  Parts.welcoming(
                    'Create\n Account',
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Parts.reusableTextField(
                    _emailController,
                    'E-mail',
                    Icons.email_outlined,
                    false,
                  ),
                  // const SizedBox(
                  //   height: 13,
                  // ),
                  // Parts.reusableTextField(
                  //   _phoneController,
                  //   'Phone Number',
                  //   Icons.phone_enabled_outlined,
                  // ),
                  const SizedBox(
                    height: 13,
                  ),
                  Parts.reusableTextField(
                    _passController,
                    'Password',
                    Icons.lock_outline,
                    true,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (_emailController.text.isEmpty || _passController.text.isEmpty){
                        CoolAlert.show(
                            context: context,
                            type: CoolAlertType.error,
                            onConfirmBtnTap: ()=> context.canPop(),
                            title: 'You have to fill both email and password!'
                        );
                      } else {
                        AuthServices.signupUser(
                            _emailController.text.trim(),
                            _passController.text.trim(),
                            context);
                        _emailController.clear();
                        _passController.clear();
                      }

                    },
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
              Parts.ask('Already have an account? ', 'SIGN IN', () => context.goNamed(Screens.signInPage.name),),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
