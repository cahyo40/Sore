import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sore_book/pages/booking_venue/controller/booking_venue_controller.dart';
import 'package:sore_book/utils/helpers/date.dart';
import 'package:yo_package/yo_package.dart';

import '../../../utils/constants/colors.dart';

class BookingVenueView extends GetView<BookingVenueController> {
  const BookingVenueView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BottomAppBar(
        height: 120,
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: backgroundColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Obx(
                  () => controller.blankDateTime()
                      ? const SizedBox()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${DateHelper.formatDateAlternative(controller.selectedDate.value)} : ${controller.selectedTime.value}",
                              style: Get.textTheme.bodyMedium,
                            ),
                            YoSpace.height(size: 4),
                            Text(
                              "Rp. 300.000",
                              style: Get.textTheme.titleLarge,
                            ),
                          ],
                        ),
                ),
              ),
              YoSpace.width(),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Clarity.check_line,
                  color: textColor,
                ),
                label: Text(
                  "Confirm",
                  style: Get.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Booking'),
      ),
      body: SafeArea(
        child: ListView(
          padding: YoPadding.listview,
          children: [
            Text(
              "Select Date",
              style: Get.textTheme.titleMedium,
            ),
            YoSpace.height(size: 8),
            SizedBox(
              child: CalendarTimeline(
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(
                  const Duration(days: 30),
                ),
                onDateSelected: (date) {
                  return controller.selectDate(date);
                },
                monthColor: accentColor,
                activeBackgroundDayColor: primaryColor,
              ),
            ),
            YoSpace.height(size: 16),
            Text(
              "Select Time",
              style: Get.textTheme.titleMedium,
            ),
            YoSpace.height(),
            Center(
              child: Wrap(
                spacing: 16,
                runSpacing: 16,
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.spaceBetween,
                children: List.generate(controller.listTime.length, (index) {
                  return InkWell(
                    onDoubleTap: () => controller.resetTime(),
                    onTap: () {
                      controller.selectTime(controller.listTime[index]);
                    },
                    child: Obx(
                      () => Container(
                        padding: YoPadding.container,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color:
                              // controller.bookingTime(controller.listTime[index])
                              //     ? accentColor
                              //     : controller.isSelectedTime(
                              //             controller.listTime[index])
                              //         ? primaryColor
                              //         : Colors.transparent,
                              controller.bookingTime(controller.listTime[index])
                                  ? accentColor
                                  : Colors.transparent,
                          border: Border.all(
                            color: controller
                                    .isSelectedTime(controller.listTime[index])
                                ? secondaryColor
                                : textColor.withOpacity(.15),
                            width: 2,
                          ),
                        ),
                        child: Text(
                          controller.listTime[index],
                          style: Get.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            YoSpace.height(size: 120),
          ],
        ),
      ),
    );
  }
}
