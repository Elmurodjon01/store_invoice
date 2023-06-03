// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ItemBox extends StatelessWidget {
  String product;
  TextEditingController controller;

  ItemBox({
    Key? key,
    required this.product,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Container(
      // height: height * 0.03,
      // width: width * 0.3,
      margin: const EdgeInsets.only(top: 5, left: 10, right: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 197, 195, 195),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            product,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFCFD8DC),
                contentPadding: const EdgeInsets.all(15),
                hintText: 'amount',
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
