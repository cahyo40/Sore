import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/order_list/controller/order_list_controller.dart';

import '../../bottom-navigation/view/bottom_navigation.dart';

class OrderListView extends GetView<OrderListController> {
  const OrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return YoBottomNavigationBarLayout(
      appBar: AppBar(
        title: const Text("Order List"),
      ),
      body: const Center(
        child: Text("Order List Page"),
      ),
    );
  }
}
