// import 'package:flutter/material.dart';
// import 'package:pizza_planet/utils/item_box.dart';

// class CustomSearchDelegate extends SearchDelegate {
//   List<TextEditingController> controller = [];
//   CustomSearchDelegate({required this.controller});
//   List<String> searchTerms = [
//     '체다슈레드',
//     '반달감자',
//     '알도우250',
//     '고구마샐러드',
//     '피자치즈',
//     '스위트콘 대',
//     '올리브슬라이스 대',
//     '할라피뇨',
//     '버팔로윙',
//     '치킨텐더',
//     '고르곤액상',
//     '아몬드슬라이스',
//     '건조파슬리',
//     '풀드포크',
//     '옥수수분말',
//     '홍피망',
//     '비프 스파게티소스',
//     '오레가노홀',
//     '마요네즈',
//     '크림치즈무스',
//   ];

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         onPressed: () {
//           query = '';
//         },
//         icon: const Icon(Icons.clear),
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         close(context, null);
//       },
//       icon: const Icon(Icons.arrow_back_ios),
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     List<String> matchQuery = [];
//     for (var random in searchTerms) {
//       if (random.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(random);
//       }
//     }
//     var size = MediaQuery.of(context).size;
//     final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
//     final double itemWidth = size.width / 2;

//     // List<String> matchQuery = [];
//     for (var random in searchTerms) {
//       if (random.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(random);
//       }
//     }
//     return GridView.builder(
//       shrinkWrap: true,
//       itemCount: matchQuery.length,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           childAspectRatio: (itemHeight / itemWidth), crossAxisCount: 2),
//       itemBuilder: (BuildContext context, int index) {
//         var result = matchQuery[index];
//         return ItemBox(product: result, controller: controller[index]);
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
//     final double itemWidth = size.width / 2;

//     List<String> matchQuery = [];
//     for (var random in searchTerms) {
//       if (random.toLowerCase().contains(query.toLowerCase())) {
//         matchQuery.add(random);
//       }
//     }
//     return GridView.builder(
//       shrinkWrap: true,
//       itemCount: matchQuery.length,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           childAspectRatio: (itemHeight / itemWidth), crossAxisCount: 2),
//       itemBuilder: (BuildContext context, int index) {
//         var result = matchQuery[index];
//         return ItemBox(product: result, controller: controller[index]);
//       },
//     );
//   }
// }
