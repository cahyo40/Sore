import 'package:get/get.dart';
import 'package:sore_book/pages/bottom-navigation/controller/bottom_navigation_controller.dart';

class BottomNavigationBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavigationController(), permanent: true);
  }
}
