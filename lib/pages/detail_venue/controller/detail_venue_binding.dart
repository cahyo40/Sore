import 'package:get/get.dart';
import 'package:sore_book/pages/detail_venue/controller/detail_venue_controller.dart';

class DetailVenueBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailVenueController>(() => DetailVenueController());
  }
}
