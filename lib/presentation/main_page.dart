
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pizza_planet/model/constants.dart';
import 'package:pizza_planet/presentation/authentication/auth_services.dart';
import 'package:pizza_planet/src/logic/go_router.dart';
import 'package:pizza_planet/utils/Custom_appBar.dart';
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
          const CustomeAppbar(),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              height: height * 0.7,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Center(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    IconBox(
                      title: 'refill items',
                      img:
                          'https://cdn-icons-png.flaticon.com/512/1440/1440524.png',
                      onPressed: () => context.pushNamed(Screens.refillPage.name),
                    ),
                    IconBox(
                      title: 'store address',
                      img:
                          'https://img.icons8.com/?size=512&id=42828&format=png',
                      onPressed: () => context.pushNamed(Screens.mapPage.name),
                    ),
                    IconBox(
                      title: 'invoice',
                      img:
                          'https://cdn-icons-png.flaticon.com/512/4143/4143062.png',
                      onPressed: () => checkWeb(),
                    ),
                    IconBox(
                      title: 'delete account',
                      img:
                      'https://cdn-icons-png.flaticon.com/512/2037/2037451.png',
                      onPressed: () => AuthServices.deleteUse(context),

                    ),
                    Container(
                     padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 40),
                     child: GestureDetector(
                      onTap: ()=> context.pushNamed(Screens.notificationsPage.name),
                       child: Column(
                         children: [
                           Image.asset('assets/images/notification.gif'),
                          const Text('Notifications'),
                         ],
                       ),
                     ),

                    ),
                    Container(
                     padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 40),
                     child: GestureDetector(
                      onTap: ()=> context.pushNamed(Screens.sendNotificaiton.name),
                       child: Column(
                         children: [
                           Image.asset('assets/images/notification.gif'),
                          const Text('Notify'),
                         ],
                       ),
                     ),

                    ),
                  
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
