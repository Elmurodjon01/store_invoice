import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Container LoadButton(
    BuildContext context, TextEditingController habitController) {
  // final provider = Provider.of<ThemeProvider>(context);
  return Container(
    margin: const EdgeInsets.only(bottom: 50),
    height: 60,
    width: 140,
    decoration: BoxDecoration(
      color: const Color(0xFF80CBC4),
      //TODO: come here
      // provider.themeMode == provider.isDarkMode ? Colors.grey : Colors.orange,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Center(
      child: const Text(
        '제출하기',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
