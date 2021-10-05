import 'package:get/get.dart';
import 'package:online_ticketing_system/Models/Bus.dart';

class BusController extends GetxController {
  var busList = <Bus>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchBus();
  }

  void fetchBus() async {}
}
