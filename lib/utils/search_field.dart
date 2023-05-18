import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pizza_planet/src/logic/provider.dart';
import 'package:provider/provider.dart';

class SearchBox extends StatelessWidget {
  void Function(String)? onChanged;
  SearchBox({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SheetsLogic>(context);
    Debouncer _debouncer = Debouncer();
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: const Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        onChanged: onChanged,
        // onChanged: (title) {
        //
        //   _debouncer.run((){
        //
        //   });
        //   print(provider.searchResults);
        // },
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(15),
            hintText: '주문할 제품 검색하세요!',
            hintStyle: const TextStyle(color: Color(0xffDDDADA), fontSize: 14),
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none)),
      ),
    );
  }
}

class Debouncer {
  final int milliseconds;

  Timer? _timer;

  Debouncer({this.milliseconds = 500});

  run(VoidCallback action) {
    if (null != _timer) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
