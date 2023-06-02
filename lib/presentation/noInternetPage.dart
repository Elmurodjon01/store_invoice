

import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';


import '../model/constants.dart';


class NoInternetPage extends StatelessWidget {
  const NoInternetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        children: [
          const SizedBox(
            height: 300,
          ),
          Center(
            child: Image.asset('assets/images/nointernet.png'),
          ),
          const Divider(),

          GestureDetector(
            onTap: ()=> Phoenix.rebirth(context),
            child: Container(
              height: 50,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.white70,
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.white.withOpacity(0.7),
                //     spreadRadius: 2,
                //     blurRadius: 10.0,
                //     offset: const Offset(0, 5),
                //   ),
                // ],
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Row(

                  children: [
                    Text('Restart'),
                    Icon(Icons.restart_alt),
                    // MaterialButton(onPressed: ()=> Phoenix.rebirth(context),
                    // child: const Icon(Icons.restart_alt_outlined, color: Colors.white, size: 50,),),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
