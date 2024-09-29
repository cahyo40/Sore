// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sore_book/pages/home/controller/home_controller.dart';
import 'package:sore_book/pages/home/view/home_view.dart';
import 'package:sore_book/pages/messages/controller/messages_controller.dart';
import 'package:sore_book/pages/messages/view/messages_view.dart';
import 'package:sore_book/pages/notification/controller/notification_controller.dart';
import 'package:sore_book/pages/notification/view/notification_view.dart';
import 'package:sore_book/pages/order_list/controller/order_list_controller.dart';
import 'package:sore_book/pages/order_list/view/order_list_view.dart';
import 'package:sore_book/pages/profile/controller/profile_controller.dart';
import 'package:sore_book/pages/profile/view/profile_view.dart';
import 'package:sore_book/routes/app_route.dart';

import '../model/bottom_nav_model.dart';

class BottomNavigationController extends GetxController {
  // list icon for bottom nav
  List<ItemBottomNavModel> itemBottomNav = [
    ItemBottomNavModel(
      icon: Clarity.home_line,
      title: "Home",
      iconActive: Clarity.home_solid,
      body: const HomeView(),
      controller: HomeController(),
      appRoute: AppRoute.HOME,
    ),
    ItemBottomNavModel(
      icon: Clarity.list_line,
      title: "Order",
      iconActive: Clarity.list_solid,
      body: const OrderListView(),
      controller: OrderListController(),
      appRoute: AppRoute.ORDERLIST,
    ),
    ItemBottomNavModel(
      icon: Clarity.chat_bubble_line,
      title: "Message",
      iconActive: Clarity.chat_bubble_solid,
      body: const MessagesView(),
      controller: MessagesController(),
      appRoute: AppRoute.MESSAGE,
    ),
    ItemBottomNavModel(
      icon: Clarity.notification_line,
      title: "Notification",
      iconActive: Clarity.notification_solid,
      body: const NotificationView(),
      controller: NotificationController(),
      appRoute: AppRoute.NOTIFICATION,
    ),
    ItemBottomNavModel(
      icon: Clarity.user_line,
      title: "Profile",
      iconActive: Clarity.user_solid,
      body: const ProfileView(),
      controller: ProfileController(),
      appRoute: AppRoute.PROFILE,
    ),
  ];
  // variable CurrPage
  RxInt currPage = 0.obs;
  // function for change Page
  void changePage(int index) {
    log("Change Page $index");
    currPage.value = index;
    // Get.put(itemBottomNav[index].controller);
    Get.offAllNamed(itemBottomNav[index].appRoute);
  }

  // check active button
  bool activePage(int index) => currPage.value == index;
}
