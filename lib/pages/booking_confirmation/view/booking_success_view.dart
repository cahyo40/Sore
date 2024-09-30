import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/booking_confirmation/controller/booking_confirmation_controller.dart';

class BookingSuccessView extends GetView<BookingConfirmationController> {
  const BookingSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookingSuccessView'),
      ),
      body: const SafeArea(
        child: Text('BookingSuccessViewController'),
      ),
    );
  }
}
