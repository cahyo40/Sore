import 'package:get/get.dart';
import 'package:sore_book/pages/booking_venue/controller/booking_venue_controller.dart';

class BookingVenueBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookingVenueController>(() => BookingVenueController());
  }
}
