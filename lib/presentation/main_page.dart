import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pizza_planet/presentation/map.dart';

import 'package:pizza_planet/presentation/product_refill_page.dart';
import 'package:pizza_planet/src/logic/go_router.dart';
import 'package:pizza_planet/utils/appBar.dart';
import 'package:pizza_planet/utils/check_web.dart';

import '../utils/icon_box.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
              height: height * 0.7,
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
                      onPressed: () => context.pushNamed(Screens.refillPage.name),
                    ),
                    IconBox(
                      title: '맵에서 확인하기',
                      img:
                          'https://png.pngtree.com/png-clipart/20220719/original/pngtree-vector-location-icon-free-and-png-png-image_8369674.png',
                      onPressed: () => context.goNamed(Screens.mapPage.name),
                    ),
                    IconBox(
                      title: '송장 확인',
                      img:
                          'https://cdn-icons-png.flaticon.com/512/4143/4143062.png',
                      onPressed: () => checkWeb(),
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
