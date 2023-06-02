


import 'package:flutter/material.dart';

class Parts {
  static Widget avatar(String urlImg) {
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            urlImg,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      height: 80,
      width: 80,
    );
  }

  static Widget welcoming(String s) {
    return Text(
      s,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
      textAlign: TextAlign.center,
    );
  }

  static Widget welcomingTwo() {
    return const Text(
      'Sign into to Continue',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    );
  }

  static Widget reusableTextField(
    TextEditingController controllerOne,
    String label,
    IconData icon,
    bool isObscure,
  ) {
    return TextField(
      style: const TextStyle(color: Colors.white70),
      controller: controllerOne,
      obscureText: isObscure,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Colors.white60),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Colors.red),
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: label,
        hintStyle: const TextStyle(color: Colors.white70),
        icon: Icon(
          icon,
          color: Colors.white54,
        ),
      ),
    );
  }

  static Widget restorePass(void Function()? ontap) {
    return GestureDetector(
     onTap: ontap,
      child: const Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.white60, fontSize: 15),
      ),
    );
  }

  static Widget ask( String text1, String text2, void Function()? goWhere) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: const TextStyle(color: Colors.white60, fontSize: 20),
        ),
        GestureDetector(
          onTap: goWhere,
          child: Text(
            text2,
            style: const TextStyle(color: Colors.lightBlue, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
