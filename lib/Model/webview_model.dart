// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:praktikum1/kategori/webview_controller.dart';
//
// class WebViewApp extends StatelessWidget {
//   final WebViewController controller = Get.put(WebViewController());
//
//    WebViewApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter WebView'),
//       ),
//       body: FutureBuilder(
//         future: controller.loadWebView(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return Obx(() => WebView(
//               onWebViewCreated: (webViewController) {
//                 controller.webController = webViewController;
//               },
//               initialUrl: 'https://flutter.dev',
//             ));
//           } else {
//             return const Center(child: CircularProgressIndicator());
//           }
//         },
//       ),
//     );
//   }
// }
