import 'package:get/get.dart';
import 'package:sore_book/pages/booking_confirmation/controller/booking_confirmation_controller.dart';

class BookingConfirmationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookingConfirmationController>(
        () => BookingConfirmationController());
  }
}
