import 'package:flutter/material.dart';
import 'package:pizza_planet/presentation/product_refill_page.dart';
import 'package:pizza_planet/utils/icon_box.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pizza Planet',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              height: height * 0.8,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Center(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    IconBox(
                      title: '재우기',
                      img:
                          'https://cdn-icons-png.flaticon.com/512/1440/1440524.png',
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ProductRefillPage())),
                    ),
                    IconBox(
                      title: '재우기',
                      img:
                          'https://cdn.dribbble.com/users/285803/screenshots/1066705/dribbble.gif',
                      onPressed: () {},
                    ),
                    IconBox(
                      title: '재우기',
                      img:
                          'https://cdn.dribbble.com/users/285803/screenshots/1066705/dribbble.gif',
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
