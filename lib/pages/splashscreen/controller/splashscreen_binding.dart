import 'package:get/get.dart';
import 'package:sore_book/pages/splashscreen/controller/splashscreen_controller.dart';

class SplashscreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashscreenController());
  }
}
