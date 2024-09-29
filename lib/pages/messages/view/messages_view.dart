import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/bottom-navigation/view/bottom_navigation.dart';
import 'package:sore_book/pages/messages/controller/messages_controller.dart';

class MessagesView extends GetView<MessagesController> {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const YoBottomNavigationBarLayout(
      body: Center(
        child: Text("Message Page"),
      ),
    );
  }
}
