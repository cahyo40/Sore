import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/notification/controller/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('NotificationView')),
        body: const SafeArea(child: Text('NotificationViewController')));
  }
}
