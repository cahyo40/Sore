import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/order_list/controller/order_list_controller.dart';

class OrderListView extends GetView<OrderListController> {
  const OrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('OrderListView')),
        body: const SafeArea(child: Text('OrderListViewController')));
  }
}
