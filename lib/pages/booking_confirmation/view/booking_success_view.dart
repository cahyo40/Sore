import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sore_book/pages/booking_confirmation/controller/booking_confirmation_controller.dart';
import 'package:sore_book/utils/constants/colors.dart';
import 'package:yo_package/yo_package.dart';

class BookingSuccessView extends GetView<BookingConfirmationController> {
  const BookingSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: YoPadding.listview,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Iconsax.wallet_check_outline,
                size: Get.width * 0.3,
                color: primaryColor,
              ),
              YoSpace.height(
                size: 32,
              ),
              Text(
                "Booking Successful!",
                style: Get.textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              YoSpace.height(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Thank you for your booking. We look forward to seeing you!",
                  style: Get.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              YoSpace.height(
                size: 32,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.btnSuccess();
                },
                child: Text(
                  "Back to Venue",
                  style: Get.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
