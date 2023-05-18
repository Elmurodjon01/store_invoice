import 'package:flutter/material.dart';
import 'package:pizza_planet/model/constants.dart';
import 'package:pizza_planet/presentation/product_refill_page.dart';
import 'package:pizza_planet/utils/appBar.dart';
import 'package:pizza_planet/utils/check_web.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/icon_box.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'Pizza Planet',
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Custome_Appbar(),
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
                          'https://www.pngfind.com/pngs/m/105-1056512_png-file-camera-photo-upload-icon-transparent-png.png',
                      onPressed: () {},
                    ),
                    IconBox(
                      title: '송장 확인',
                      img:
                          'https://cdn-icons-png.flaticon.com/512/4143/4143062.png',
                      onPressed: () =>checkWeb(),
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
