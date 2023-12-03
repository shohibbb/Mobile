import 'package:appwrite/appwrite.dart';
import 'package:get/get.dart';

class ClientControler extends GetxController {
  Client client = Client();

  @override
  void onInit() {
    super.onInit();

    const endPoint = "https://cloud.appwrite.io/v1";
    const projectID = "656b2b44111b4e22e3fc";
    client
        .setEndpoint(endPoint)
        .setProject(projectID)
        .setSelfSigned(status: true);
  }
}
