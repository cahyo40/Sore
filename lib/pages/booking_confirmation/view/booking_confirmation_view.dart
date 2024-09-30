import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/booking_confirmation/controller/booking_confirmation_controller.dart';

class BookingConfirmationView extends GetView<BookingConfirmationController> {
  const BookingConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('BookingConfirmationView')),
        body: const SafeArea(child: Text('BookingConfirmationViewController')));
  }
}
