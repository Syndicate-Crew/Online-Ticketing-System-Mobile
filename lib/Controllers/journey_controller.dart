import 'package:get/get.dart';
import 'package:online_ticketing_system/Models/Journey.dart';

class JourneyController extends GetxController {
  var jorneyList = <Journey>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchJourneyList();
  }

  void fetchJourneyList() async {}
}
