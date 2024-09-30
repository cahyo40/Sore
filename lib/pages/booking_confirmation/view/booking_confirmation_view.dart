import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sore_book/pages/booking_confirmation/controller/booking_confirmation_controller.dart';
import 'package:sore_book/utils/constants/colors.dart';
import 'package:sore_book/widgets/back_button.dart';
import 'package:yo_package/yo_package.dart';

class BookingConfirmationView extends GetView<BookingConfirmationController> {
  const BookingConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking Confirmation'),
        leading: const YoButtonBack(),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                padding: YoPadding.listview,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select Payment Method',
                        style: Get.textTheme.titleMedium,
                      ),
                      YoSpace.height(size: 8),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.paymentMethods.length,
                        itemBuilder: (_, index) {
                          final model = controller.paymentMethods[index];
                          return Obx(
                            () => ListTile(
                              leading: Brand(
                                model.icon,
                              ),
                              title: Text(
                                model.name,
                                style: controller.isSelectedPayment(model)
                                    ? Get.textTheme.bodyLarge
                                    : Get.textTheme.bodySmall!.copyWith(
                                        color: textColor.withOpacity(.5),
                                      ),
                              ),
                              trailing: controller.isSelectedPayment(model)
                                  ? Icon(
                                      Clarity.check_circle_solid,
                                      color: primaryColor,
                                    )
                                  : const SizedBox(),
                              onTap: () {
                                controller.selectPayment(model);
                              },
                              onLongPress: () {
                                controller.resetSelectPayment();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  YoSpace.height(size: 32),
                  Text(
                    'Payment Summary',
                    style: Get.textTheme.titleMedium,
                  ),
                  YoSpace.height(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Venue',
                        style: Get.textTheme.bodyMedium!.copyWith(
                          color: textColor.withOpacity(.5),
                        ),
                      ),
                      Text(
                        "Rp. 300.000",
                        style: Get.textTheme.bodySmall!.copyWith(
                          color: accentColor,
                        ),
                      ),
                    ],
                  ),
                  YoSpace.height(),
                  Divider(
                    thickness: 2,
                    color: textColor.withOpacity(.15),
                  ),
                  YoSpace.height(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: Get.textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Rp. 300.000",
                        style: Get.textTheme.bodyMedium!.copyWith(
                          color: primaryColor,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  YoSpace.height(size: 32),
                ],
              ),
            ),
            Padding(
              padding: YoPadding.container,
              child: Obx(
                () => controller.isPaymentNull()
                    ? const SizedBox()
                    : ElevatedButton(
                        onPressed: () {
                          controller.btnPay();
                        },
                        child: Text(
                          "Pay (Rp. 300.000)",
                          style: Get.textTheme.bodyMedium,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
