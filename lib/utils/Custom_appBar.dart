import 'package:flutter/material.dart';
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

    return Container(
      height: 130,
      width: 375,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.blue),
      child: Center(
        child: Row(
          children: [
            Column(
              children: [
                Expanded(child: avatar()),
                Container(
                  padding: const EdgeInsets.only(left: 23),
                  decoration:  BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
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
