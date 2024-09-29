import 'package:get/get.dart';
import 'package:sore_book/pages/order_list/controller/order_list_controller.dart';

class OrderListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderListController>(() => OrderListController());
  }
}
