import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/booking_venue/controller/booking_venue_controller.dart';

class BookingVenueView extends GetView<BookingVenueController> {
  const BookingVenueView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookingOrderView'),
      ),
      body: const SafeArea(
        child: Text('BookingOrderViewController'),
      ),
    );
  }
}
