import 'dart:developer';

import 'package:get/get.dart';

class DetailVenueController extends GetxController {
  //Button function

  // button back
  void btnBack() {
    log("Press button back");
    Get.back();
  }

  // button bookmark
  void btnBookmark() {
    log("Press button bookmark");
  }

  // button maps
  void btnMaps() {
    log("Press button maps");
  }

  // button booking
  void btnBooking() {
    log("Press button booking");
  }

  // button show review
  void btnShowReview() {
    log("Press button show review");
  }
}
