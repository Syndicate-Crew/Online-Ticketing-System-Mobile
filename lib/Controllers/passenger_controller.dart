import 'package:get/get.dart';
import 'package:online_ticketing_system/Models/Passenger.dart';

class JourneyController extends GetxController {
  var passengerList = <Passenger>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchPassengerList();
  }

  void fetchPassengerList() async {}
}
