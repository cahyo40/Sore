import 'dart:developer';

import 'package:get/get.dart';

import '../../../routes/app_route.dart';

class SplashscreenController extends GetxController {
  @override
  void onReady() {
    log("Splash Ready");
    Future.delayed(const Duration(milliseconds: 1500), () {
      Get.offAllNamed(AppRoute.SIGNIN);
    });
  }
}
