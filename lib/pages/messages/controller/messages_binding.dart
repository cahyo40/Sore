import 'package:get/get.dart';
import 'package:sore_book/pages/messages/controller/messages_controller.dart';

class MessagesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MessagesController>(() => MessagesController());
  }
}
