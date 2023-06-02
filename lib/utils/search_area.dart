import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final user = FirebaseAuth.instance.currentUser!;
searchArea (TextEditingController searchController, void Function()? onPressed){
  return Positioned(
    top: 100,
    left: 0,
    right: 0,
    child: Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset.zero,
          ),
        ],

      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                  image: NetworkImage('https://w7.pngwing.com/pngs/419/473/png-transparent-computer-icons-user-profile-login-user-heroes-sphere-black-thumbnail.png'),
                  fit: BoxFit.cover, ),
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                )
            ),
          ),
          const SizedBox(
            width: 10,
          ),
           Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text('hello '),
                  Text(user.email!, style:const TextStyle(fontWeight: FontWeight.bold,),)
                ],
              ),
              TextFormField(
                textCapitalization: TextCapitalization.words,
                controller: searchController,
                decoration: const InputDecoration(

                  hintText: 'Which branch do you navigate?',
                  hintStyle: TextStyle(color: Colors.grey),

                ),
                onChanged: (value){
                  print(value);
                },
              ),
            ],
          ),
          ),
            IconButton(
              onPressed: onPressed,
              icon: const Icon( Icons.search, color: Colors.blue, size: 40,),
           ),
        ],
      ),
    ),);
}