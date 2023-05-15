import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

GestureDetector LoadButton(
    {required BuildContext context, required void Function()? onTap}) {
  // final provider = Provider.of<ThemeProvider>(context);
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.only(bottom: 50),
      height: 60,
      width: 140,
      decoration: BoxDecoration(
        color: const Color(0xFF80CBC4),
        //TODO: come here
        // provider.themeMode == provider.isDarkMode ? Colors.grey : Colors.orange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: Text(
          '제출하기',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
