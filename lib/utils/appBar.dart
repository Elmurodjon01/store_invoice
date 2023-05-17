import 'package:flutter/material.dart';

class Custome_Appbar extends StatelessWidget {
  const Custome_Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.blue),
      child: const Center(
        child: Text(
          'Pizza planet',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
