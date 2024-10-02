import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/bottom-navigation/controller/bottom_navigation_controller.dart';
import 'package:sore_book/utils/constants/colors.dart';

import '../../model/bottom_nav_model.dart';

class BottomNavItem extends GetView<BottomNavigationController> {
  final ItemBottomNavModel model;
  final int index;
  const BottomNavItem(this.index, {super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          controller.changePage(index);
        },
        child: AnimatedCrossFade(
          firstChild: SizedBox(
            height: 55,
            width: (Get.size.width - 64) / 5,
            child: Icon(
              model.iconActive,
              size: 32,
              color: primaryColor,
            ),
          ),
          secondChild: SizedBox(
            width: (Get.size.width - 64) / 5,
            child: Icon(
              model.icon,
              size: 32,
              color: textColor.withOpacity(.35),
            ),
          ),
          crossFadeState: controller.activePage(index)
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 500),
          firstCurve: Curves.linear,
          secondCurve: Curves.ease,
        ),
      ),
    );
  }
}
