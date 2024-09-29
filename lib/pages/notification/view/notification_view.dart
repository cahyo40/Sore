import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/notification/controller/notification_controller.dart';

import '../../bottom-navigation/view/bottom_navigation.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const YoBottomNavigationBarLayout(
      body: Center(
        child: Text("Notification Page"),
      ),
    );
  }
}
