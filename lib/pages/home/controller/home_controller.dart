import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sore_book/routes/app_route.dart';

class HomeController extends GetxController {
  List<Map<String, dynamic>> listSport = [
    {
      "title": "football",
      "icon": MingCute.football_line,
    },
    {
      "title": "badminton",
      "icon": MingCute.badminton_line,
    },
    {
      "title": "basketball",
      "icon": MingCute.basketball_line,
    },
    {
      "title": "futsal",
      "icon": MingCute.football_line,
    },
    {
      "title": "volleyball",
      "icon": MingCute.volleyball_line,
    },
    {
      "title": "other",
      "icon": MingCute.baseball_line,
    },
  ];

  // button detail venue
  toDetailVenue() {
    Get.toNamed(AppRoute.DETAILVENUE);
  }
}
