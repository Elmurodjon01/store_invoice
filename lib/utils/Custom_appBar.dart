import 'package:flutter/material.dart';
import 'package:pizza_planet/model/constants.dart';
import 'package:pizza_planet/presentation/authentication/auth_services.dart';
import 'package:pizza_planet/utils/avatar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CustomeAppbar extends StatefulWidget {
  const CustomeAppbar({
    super.key,
  });

  @override
  State<CustomeAppbar> createState() => _CustomeAppbarState();
}

class _CustomeAppbarState extends State<CustomeAppbar> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
String userInfo = user.email!;
    return Container(
      height: 130,
      width: 375,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: mainColor),
      child: Center(
        child: Row(
          children: [
            Column(
              children: [
                Expanded(child: avatar()),

                   Container(
                     width: 210,
                    padding: const EdgeInsets.only(left: 15,),
                    decoration:  BoxDecoration(

                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        children: [
                          const Text('Welcome ', style: TextStyle(fontSize: 12),),
                          Expanded(
                            child: Text(
                              '$userInfo  ',
                              style:  const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),

                            ),
                          ),
                        ],

                  ),
                ),
              ],
            ),
            const Text(
              'Pizza planet',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white54),
            ),
            IconButton(
              onPressed: () {
                AuthServices.signOutUser(context);

              },
              icon: const Icon(Icons.logout, color: Colors.grey,),
            ),
          ],
        ),
      ),
    );
  }
}
