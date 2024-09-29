import 'dart:developer';

import 'package:get/get.dart';
import 'package:sore_book/utils/helpers/date.dart';

class BookingVenueController extends GetxController {
  // variable selectedDate
  Rx<DateTime> selectedDate = DateTime.now().obs;

  // change date
  void selectDate(DateTime date) {
    selectedDate.value = date;
    resetTime();
  }

  // list time
  List<String> listTime = DateHelper.generateTimeSlots(7, 24);
  // variable selected time
  RxnString selectedTime = RxnString();
  // change selected time
  void selectTime(String time) {
    log("Select Time : ${selectedTime.value}");
    if (bookingList.contains(time)) {
    } else {
      selectedTime.value = time;
    }
  }

  // check selected time
  bool isSelectedTime(String time) => selectedTime.value == time;
  // reset selected time
  void resetTime() => selectedTime.value = null;

  List<String> bookingList = [
    "10:00",
    "20:00",
    "17:00",
  ];

  bool bookingTime(String time) => bookingList.contains(time);

  bool blankDateTime() => selectedTime.value == null;
}
