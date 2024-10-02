import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/bottom-navigation/controller/bottom_navigation_controller.dart';
import 'package:sore_book/pages/bottom-navigation/view/widget/bottom_nav_item.dart';
import 'package:sore_book/utils/constants/colors.dart';
import 'package:yo_package/yo_package.dart';

class YoBottomNavigation extends GetView<BottomNavigationController> {
  const YoBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: Get.size.width - 32,
      padding: YoPadding.container,
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(.8),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(controller.itemBottomNav.length, (index) {
          final model = controller.itemBottomNav[index];
          return BottomNavItem(index, model: model);
        }),
      ),
    );
  }
}

class YoBottomNavigationBarLayout extends GetView<BottomNavigationController> {
  final AppBar? appBar;
  final Widget? body;
  const YoBottomNavigationBarLayout({
    required this.body,
    this.appBar,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appBar ??
            const PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: SizedBox(),
            ),
        floatingActionButton: const YoBottomNavigation(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: body ??
            Center(
              child: Text(
                "Wrong Page",
                style: Get.textTheme.headlineMedium,
              ),
            ),
      ),
    );
  }
}
