import 'package:get/get.dart';
import 'package:online_ticketing_system/Models/Driver.dart';

class JourneyController extends GetxController {
  var driverList = <Driver>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchDriverList();
  }

  void fetchDriverList() async {}
}
