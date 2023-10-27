// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class SearchController extends GetxController {
//   final TextEditingController searchController = TextEditingController();
//   final RxString searchResult = ''.obs;
//
//   void onSearchTextChanged(String value) {
//     searchResult.value = value;
//   }
// }
//
// class SearchBarApp extends StatelessWidget {
//   final SearchController controller = Get.put(SearchController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF34303E),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               const SizedBox(height: 30),
//               TextField(
//                 controller: controller.searchController,
//                 decoration: InputDecoration(
//                   labelText: 'Search',
//                   hintText: 'Search for something...',
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: const BorderSide(color: Colors.white),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: const BorderSide(color: Colors.grey),
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   filled: true,
//                   fillColor: const Color(0xFF5E5B63),
//                 ),
//                 onChanged: (value) {
//                   controller.onSearchTextChanged(value);
//                 },
//               ),
//               const SizedBox(height: 20),
//               Obx(() => Text(
//                     'Recommendation: ${controller.searchResult.value}',
//                     style: const TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   )),
//               const SizedBox(height: 20),
//               Container(
//                 margin: const EdgeInsets.fromLTRB(2, 0, 0, 2),
//                 width: double.infinity,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Column(
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
//                           width: 175,
//                           height: 231,
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(7),
//                             child: Image.asset(
//                               'assets/page-1/images/suzume.png',
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                         ),
//                         const Text(
//                           'SUZUME NO TOJIMARI',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                           ),
//                         ),
//                         const Text(
//                           'Movie',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(width: 25),
//                     Column(
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
//                           width: 175,
//                           height: 231,
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(7),
//                             child: Image.asset(
//                               'assets/page-1/images/sxf.png',
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                         ),
//                         const Text(
//                           'SPY X FAMILY',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                           ),
//                         ),
//                         const Text(
//                           'Chapter 56',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 40),
//               Container(
//                 margin: const EdgeInsets.fromLTRB(2, 0, 0, 2),
//                 width: double.infinity,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Column(
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
//                           width: 175,
//                           height: 231,
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(7),
//                             child: Image.asset(
//                               'assets/page-1/images/boruto.png',
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                         ),
//                         const Text(
//                           'BORUTO',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                           ),
//                         ),
//                         const Text(
//                           'Chapter 46',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(width: 25),
//                     Column(
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
//                           width: 175,
//                           height: 231,
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(7),
//                             child: Image.asset(
//                               'assets/page-1/images/dragonball.png',
//                               fit: BoxFit.fill,
//                             ),
//                           ),
//                         ),
//                         const Text(
//                           'DRAGON BALL',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                           ),
//                         ),
//                         const Text(
//                           'Chapter 56',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
