import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:praktikum1/kategori/ProfileModel.dart';

class ProfileController extends GetxController {
  final ImagePicker imagePicker = ImagePicker();
  final images = <ImageModel>[].obs;

  Future<void> pickImage(ImageSource source) async {
    try {
      final pickedFile = await imagePicker.pickImage(source: source);
      if (pickedFile != null) {
        const title = 'Title';
        const description = 'Description';
        final imagePath = pickedFile.path;
        final image = ImageModel(title, description, imagePath);
        images.add(image);
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }
}