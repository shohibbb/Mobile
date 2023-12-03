import 'package:appwrite/appwrite.dart';
import 'package:praktikum1/Controller/client_controller.dart';

class RealtimeController extends ClientControler {
  Realtime? realtime;

  @override
  void onInit() {
    super.onInit();

    realtime = Realtime(client);
  }

  subsUserName() async {
    final subscription = realtime!.subscribe(['files']);

    subscription.stream.listen((response) {
      if (response.events.contains('buckets.*.files.*.create')) {
        print("RealtimeController::subsUserName${response.payload}");
        print("RealtimeController::subsUserName${response.events}");
      }
    });
  }
}
