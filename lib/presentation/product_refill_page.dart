import 'package:flutter/material.dart';
import 'package:pizza_planet/utils/item_box.dart';
import 'package:pizza_planet/utils/search_field.dart';
import 'package:pizza_planet/utils/load_button.dart';

class ProductRefillPage extends StatefulWidget {
  const ProductRefillPage({super.key});

  @override
  State<ProductRefillPage> createState() => _ProductRefillPageState();
}

class _ProductRefillPageState extends State<ProductRefillPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          '제품 정보',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                const SearchBox(),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return ItemBox(
                          controller: controller,
                          product: products[index],
                        );
                      }),
                ),
              ],
            ),
          ),
          LoadButton(context, controller),
        ],
      ),
    );
  }
}

List<String> products = [
  '어니언 드래싱'
      '파마산',
  '와사비',
  '바베큐 소스',
  '칠리소스',
  '치킨너겟',
  '미트토핑',
  '점보닭다리',
  '씬도 11인치',
  '씬도 13인치',
];
