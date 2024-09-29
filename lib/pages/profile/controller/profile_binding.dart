import 'package:get/get.dart';
import 'package:sore_book/pages/profile/controller/profile_controller.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
