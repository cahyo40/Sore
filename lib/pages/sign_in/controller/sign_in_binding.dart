import 'package:get/get.dart';
import 'package:sore_book/pages/sign_in/controller/sign_in_controller.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}
