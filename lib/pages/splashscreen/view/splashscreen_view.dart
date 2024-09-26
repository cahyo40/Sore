import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/splashscreen/controller/splashscreen_controller.dart';
import 'package:sore_book/utils/constants/colors.dart';

import '../../../utils/constants/images.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: backgroundColor,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: Get.size.height / 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0, 1],
                    colors: [Colors.transparent, primaryColor.withOpacity(.5)],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              bottom: Get.size.height * 0.1,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  ImageAssets.logo,
                  height: Get.size.height * .25,
                ),
              ),
            ),
            Positioned.fill(
              bottom: 16,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Yo Dev\nversion 1.0",
                  textAlign: TextAlign.center,
                  style: Get.textTheme.labelMedium!.copyWith(
                    color: textColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
