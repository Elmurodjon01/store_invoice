import 'package:flutter/material.dart';
import 'package:pizza_planet/src/logic/provider.dart';
import 'package:provider/provider.dart';
import '../model/constants.dart';
import '../utils/item_box.dart';
import '../utils/load_button.dart';

class ProductRefillPage extends StatefulWidget {
  const ProductRefillPage({super.key});

  @override
  State<ProductRefillPage> createState() => _ProductRefillPageState();
}

class _ProductRefillPageState extends State<ProductRefillPage> {
  // TextEditingController controller1 = TextEditingController();

  List<TextEditingController> _controller =
      List.generate(20, (i) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SheetsLogic>(context);
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
                const SearchBar(),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: first20Row.length,
                      itemBuilder: (context, index) {
                        return ItemBox(
                          controller: _controller[index],
                          product: first20Row[index],
                        );
                      }),
                ),
              ],
            ),
          ),
          LoadButton(
            context: context,
            onTap: () => provider.gsheetSubmit(
              controller1: _controller[0],
              controller10: _controller[9],
              controller11: _controller[10],
              controller13: _controller[12],
              controller14: _controller[13],
              controller15: _controller[14],
              controller16: _controller[15],
              controller17: _controller[16],
              controller18: _controller[17],
              controller19: _controller[18],
              controller2: _controller[1],
              controller20: _controller[19],
              controller3: _controller[2],
              controller4: _controller[3],
              controller5: _controller[4],
              controller6: _controller[5],
              controller7: _controller[6],
              controller8: _controller[7],
              controller9: _controller[8],
            ),
          ),
        ],
      ),
    );
  }
}
