// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class IconBox extends StatelessWidget {
  void Function()? onPressed;
  String title;
  String img;
  IconBox({
    Key? key,
    this.onPressed,
    required this.title,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 40),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Expanded(
                child: Image.network(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
