import 'package:flutter/material.dart';
import 'package:pizza_planet/presentation/authentication/auth_services.dart';
import 'package:pizza_planet/utils/avatar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Custome_Appbar extends StatefulWidget {
  const Custome_Appbar({
    super.key,
  });

  @override
  State<Custome_Appbar> createState() => _Custome_AppbarState();
}

class _Custome_AppbarState extends State<Custome_Appbar> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Container(
      height: 130,
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.blue),
      child: Center(
        child: Row(
          children: [
            // Text('대표자:'),
            Column(
              children: [
                Expanded(child: avatar()),
                Container(
                  padding: const EdgeInsets.only(left: 23),
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    
                  ),
                  child: Row(
                    children: [
                      const Text('User:'),
                      Text(
                        user.email!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Text(
              'Pizza planet',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            IconButton(
              onPressed: () {
                AuthServices.signOutUser(context);

              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
