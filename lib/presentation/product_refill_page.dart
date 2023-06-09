import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pizza_planet/src/logic/go_router.dart';
import 'package:pizza_planet/src/logic/provider.dart';
import 'package:provider/provider.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import '../model/constants.dart';
import '../utils/item_box.dart';
import '../utils/load_animation.dart';
import '../utils/load_button.dart';

class ProductRefillPage extends StatefulWidget {
  const ProductRefillPage({super.key});

  @override
  State<ProductRefillPage> createState() => _ProductRefillPageState();
}

class _ProductRefillPageState extends State<ProductRefillPage>
    with SingleTickerProviderStateMixin {

  final List<TextEditingController> _controller =
      List.generate(58, (i) => TextEditingController());


  @override
  void initState() {

    allLabel.addAll(first20Row);
    allLabel.addAll(second20Row);
    allLabel.addAll(third20Row);
    print(allLabel.length);
    // for (var controller in _controller) {
    //   controller.addListener(() {
    //     controller.selection =
    //         TextSelection.fromPosition(const TextPosition(offset: 0));
    //   });
    // }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    final provider = Provider.of<SheetsLogic>(context);

    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'product info',

          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: allLabel.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: (itemHeight / itemWidth),
                          crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        return ItemBox(
                            product: allLabel[index],
                            controller: _controller[index]);
                      },
                    ),

                ),
              ],
            ),
          ),
          LoadButton(
              context: context,
              onTap: () {

                //TODO: do some action if controllers are empty ?? null
                if (_controller.isEmpty) {}
                loadAnimation(
                  context: context,
                  onConfirmBtnTap: () {
                    provider.gsheetSubmit(
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
                      controller12: _controller[11],
                      controller21: _controller[20],
                      controller22: _controller[21],
                      controller23: _controller[22],
                      controller24: _controller[23],
                      controller25: _controller[24],
                      controller26: _controller[25],
                      controller27: _controller[26],
                      controller28: _controller[27],
                      controller29: _controller[28],
                      controller30: _controller[29],
                      controller31: _controller[30],
                      controller32: _controller[31],
                      controller33: _controller[32],
                      controller34: _controller[33],
                      controller35: _controller[34],
                      controller36: _controller[35],
                      controller37: _controller[36],
                      controller38: _controller[37],
                      controller39: _controller[38],
                      controller40: _controller[39],
                      controller41: _controller[40],
                      controller42: _controller[41],
                      controller43: _controller[42],
                      controller44: _controller[43],
                      controller45: _controller[44],
                      controller46: _controller[45],
                      controller47: _controller[46],
                      controller48: _controller[47],
                      controller49: _controller[48],
                      controller50: _controller[49],
                      controller51: _controller[50],
                      controller52: _controller[51],
                      controller53: _controller[52],
                      controller54: _controller[53],
                      controller55: _controller[54],
                      controller56: _controller[55],
                      controller57: _controller[56],
                      controller58: _controller[57],
                      // controller59: _controller[58],
                      // controller60: _controller[59],
                      // controller61: _controller[60],
                      // controller62: _controller[61],
                      // controller63: _controller[62],
                      // controller64: _controller[63],
                      // controller65: _controller[64],
                      // controller66: _controller[65],
                      // controller67: _controller[66],
                      // controller68: _controller[67],
                      // controller69: _controller[68],
                      // controller70: _controller[69],
                      // controller71: _controller[70],
                      // controller72: _controller[71],
                      // controller73: _controller[72],
                      // controller74: _controller[73],
                      // controller75: _controller[74],
                      // controller76: _controller[75],
                      // controller77: _controller[76],
                    );
                    WidgetsBinding.instance
                        .addPostFrameCallback((_) => _controller.clear());
                    context.pushReplacementNamed(Screens.mainPage.name);

                  },
                  onCancelBtnTap: () => Navigator.pop(context),
                );
              }),
        ],
      ),
    );
  }
}
