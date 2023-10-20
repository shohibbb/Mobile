import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';


class FlagController extends GetxController {
  final flags = <String>[
    'assets/page-1/images/china.png',
    'assets/page-1/images/jepang.png',
    'assets/page-1/images/korea.png',
    'assets/page-1/images/icon-color-palette.png',
    'assets/page-1/images/icon-colored-palette.png',
  ].obs;

}

// class Home extends StatelessWidget {
//   final flagController = Get.put(FlagController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF34303E),
//       body: Column(
//         children: <Widget>[
//           CarouselSlider(
//             options: CarouselOptions(
//               height: 400,
//               autoPlay: true,
//               autoPlayInterval: const Duration(seconds: 2),
//             ),
//             items: [
//               'assets/page-1/images/sukuna.png',
//               'assets/page-1/images/onepeace.png',
//               'assets/page-1/images/opm.png',
//             ].map((String imagePath) {
//               return Builder(
//                 builder: (BuildContext context) {
//                   return Container(
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: AssetImage(imagePath),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }).toList(),
//           ),
//           const SizedBox(height: 30),
//           Obx(() => Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               for (var flagPath in flagController.flags)
//                 SizedBox(
//                   width: 50,
//                   height: 50,
//                   child: ClipOval(
//                     child: Image.asset(
//                       flagPath,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//             ],
//           )),
//           const SizedBox(height: 30),
//           Container(
//             width: 441,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(11),
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   margin: const EdgeInsets.fromLTRB(0, 0, 13, 0),
//                   width: 124,
//                   height: 208,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(11),
//                     child: Image.asset(
//                       'assets/page-1/images/eren.png',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: const EdgeInsets.fromLTRB(0, 0, 13, 0),
//                   width: 124,
//                   height: 208,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(11),
//                     child: Image.asset(
//                       'assets/page-1/images/kny.png',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: const EdgeInsets.fromLTRB(0, 0, 11, 0),
//                   width: 124,
//                   height: 208,
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(11),
//                     child: Image.asset(
//                       'assets/page-1/images/csm.png',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//
//         ],
//       ),
//     );
//   }
// }
