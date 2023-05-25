import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

Widget avatar() {
  return AvatarGlow(
    glowColor: Color.fromARGB(255, 234, 237, 240),
    endRadius: 90.0,
    duration: const Duration(milliseconds: 2000),
    repeat: true,
    showTwoGlows: true,
    repeatPauseDuration: const Duration(milliseconds: 100),
    child: Material(
      // Replace this child with your own
      elevation: 8.0,
      shape: const CircleBorder(),
      child: CircleAvatar(
        backgroundColor: Colors.grey[100],
        radius: 40.0,
        child: Image.network(
          'https://cdn.pixabay.com/photo/2017/02/23/13/05/avatar-2092113_1280.png',
          height: 60,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
