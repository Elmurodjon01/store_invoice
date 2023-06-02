
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pizza_planet/model/constants.dart';
import 'package:pizza_planet/presentation/authentication/auth_services.dart';
import 'package:pizza_planet/src/logic/go_router.dart';
import 'package:pizza_planet/utils/login_utils.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  // void dispose() {
  //   emailController.dispose();
  //   passController.dispose();
  //   super.dispose();
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: mainColor,
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
                  Parts.avatar('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5bsir0ZLjmzTEfkM4IBFQQzYNXPUjZTF6EKWQOpBfiG7yYPp_uXw5fcABtNWFbh6nipk&usqp=CAU'),
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
                  Parts.restorePass(()=> context.pushNamed(Screens.forgotPasswordPage.name)),
                  const SizedBox(
                    height: 40,
                  ),
                  //Parts.arrow(pressed: _doLogin),
                  GestureDetector(
                    onTap: (){
                      if (emailController.text.isEmpty || passController.text.isEmpty){
                        CoolAlert.show(
                          context: context,
                          type: CoolAlertType.error,
                          onConfirmBtnTap: ()=> context.canPop(),
                          title: 'You have to fill both email and password!'
                        );
                      } else {
                        AuthServices.signinUser(
                            emailController.text.trim(),
                            passController.text.trim(),
                            context, _scaffoldKey);
                        emailController.clear();
                        passController.clear();
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

                  Parts.ask('Don\'t have an account? ', 'SIGN UP', ()=> context.goNamed(Screens.signUpPage.name),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
