import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class YoButtonBack extends StatelessWidget {
  final Function()? onPressed;
  const YoButtonBack({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Iconsax.arrow_left_2_outline),
      iconSize: 24,
      onPressed: onPressed ??
          () {
            Get.back();
          },
    );
  }
}
