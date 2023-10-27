// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// void main(){
//   runApp(Profile());
// }
// class ImageModel {
//   final String title;
//   final String description;
//   final String imagePath;
//
//   ImageModel(this.title, this.description, this.imagePath);
// }
//
// class ProfileController extends GetxController {
//   final ImagePicker imagePicker = ImagePicker();
//   final images = <ImageModel>[].obs;
//
//   Future<void> pickImage(ImageSource source) async {
//     try {
//       final pickedFile = await imagePicker.pickImage(source: source);
//       if (pickedFile != null) {
//         const title = 'Title';
//         const description = 'Description';
//         final imagePath = pickedFile.path;
//         final image = ImageModel(title, description, imagePath);
//         images.add(image);
//       }
//     } catch (e) {
//       print('Error picking image: $e');
//     }
//   }
// }
//
// class Profile extends StatelessWidget {
//   final ProfileController profileController = Get.put(ProfileController());
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color(0xFF34303E),
//         appBar: AppBar(title: const Text('profile'),),
//         body: Center(
//           child: Column(
//             children: [
//
//               ElevatedButton(
//                 onPressed: () {
//                   Get.bottomSheet(
//                     Wrap(
//                       children: [
//                         ListTile(
//                           leading: const Icon(Icons.camera),
//                           title: const Text('Take a picture'),
//                           tileColor: Colors.white,
//                           onTap: () {
//                             profileController.pickImage(ImageSource.camera);
//                             Get.back();
//                           },
//                         ),
//                         ListTile(
//                           leading: const Icon(Icons.photo_library),
//                           title: const Text('Choose from gallery'),
//                           tileColor: Colors.white,
//                           onTap: () {
//                             profileController.pickImage(ImageSource.gallery);
//                             Get.back();
//                           },
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//                 child: const Text('Upload Image'),
//               ),
//               const TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Name',
//                 ),
//               ),
//               const SizedBox(height: 16),
//               const TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                 ),
//               ),
//               const SizedBox(height: 16),
//               const TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                 ),
//               ),
//               Expanded(
//                 child: Obx(
//                       () => ListView.builder(
//                     shrinkWrap: true,
//                     itemCount: profileController.images.length,
//                     itemBuilder: (context, index) {
//                       final image = profileController.images[index];
//                       return ListTile(
//                         title: Text(image.title),
//                         subtitle: Text(image.description),
//                         leading: Image.file(
//                           File(image.imagePath),
//                           width: 50,
//                           height: 50,
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
