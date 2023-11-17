import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:praktikum1/Model/NavModel.dart';

class AppController extends GetxController {
  final NavModel model = NavModel();

  void changePage(int index) {
    model.selectedPageIndex.value = index;
  }
}