// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../model/bottom_nav_model.dart';

class BottomNavigationController extends GetxController {
  // list icon for bottom nav
  List<ItemBottomNavModel> itemBottomNav = [
    ItemBottomNavModel(
      icon: Clarity.home_line,
      title: "Home",
      iconActive: Clarity.home_solid,
    ),
    ItemBottomNavModel(
        icon: Clarity.list_line,
        title: "History",
        iconActive: Clarity.list_solid),
    ItemBottomNavModel(
        icon: Clarity.chat_bubble_line,
        title: "History",
        iconActive: Clarity.chat_bubble_solid),
    ItemBottomNavModel(
        icon: Clarity.notification_line,
        title: "Notification",
        iconActive: Clarity.notification_solid),
    ItemBottomNavModel(
        icon: Clarity.user_line,
        title: "Profile",
        iconActive: Clarity.user_solid),
  ];
  // variable CurrPage
  RxInt currPage = 0.obs;
  // function for change Page
  void changePage(int index) => currPage.value = index;
  // check active button
  bool activePage(int index) => currPage.value == index;
}
