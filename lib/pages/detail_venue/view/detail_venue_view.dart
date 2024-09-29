import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sore_book/pages/detail_venue/controller/detail_venue_controller.dart';
import 'package:sore_book/utils/constants/images.dart';
import 'package:sore_book/utils/constants/lorem.dart';
import 'package:yo_package/yo_package.dart';

import '../../../utils/constants/colors.dart';

class DetailVenueView extends GetView<DetailVenueController> {
  const DetailVenueView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
              OutlinedButton.icon(
                onPressed: () {
                  controller.btnMaps();
                },
                label: Text(
                  "Maps",
                  style: Get.textTheme.bodySmall,
                ),
                icon: Icon(
                  Clarity.map_line,
                  color: textColor,
                ),
              ),
              YoSpace.width(),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    controller.btnBooking();
                  },
                  icon: Icon(
                    Clarity.date_line,
                    color: textColor,
                  ),
                  label: Text(
                    "Booking",
                    style: Get.textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: Get.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(ImageAssets.venue),
                ),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    top: 16,
                    left: 16,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          controller.btnBack();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: textColor,
                          ),
                          child: const Icon(Iconsax.arrow_left_2_outline),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    top: 16,
                    right: 16,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          controller.btnBookmark();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: textColor,
                          ),
                          child: Icon(
                            Clarity.bookmark_solid,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    bottom: 8,
                    left: 16,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: textColor.withOpacity(.75),
                        ),
                        child: Text(
                          "Basketball",
                          style: Get.textTheme.labelSmall!.copyWith(
                            color: backgroundColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              padding: YoPadding.listview,
              children: [
                Text(
                  "Dawuhan Sport Center",
                  style: Get.textTheme.titleLarge,
                ),
                YoSpace.height(size: 16),
                Text(
                  "Rp. 300.000/hour",
                  style: Get.textTheme.labelLarge!.copyWith(
                    color: textColor.withOpacity(.5),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Clarity.map_marker_line,
                      color: secondaryColor,
                      size: 16,
                    ),
                    YoSpace.width(),
                    Flexible(
                      child: Text(
                        "Dawuhan, Kayugiyang Garung",
                        style: Get.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    controller.btnShowReview();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Clarity.star_solid,
                        color: secondaryColor,
                        size: 16,
                      ),
                      YoSpace.width(),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "4.6 ",
                              style: Get.textTheme.bodyMedium,
                            ),
                            TextSpan(
                              text: "150 reviews",
                              style: Get.textTheme.bodySmall!.copyWith(
                                color: textColor.withOpacity(.5),
                                decoration: TextDecoration.underline,
                                decorationColor: textColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                YoSpace.height(size: 16),
                Text(
                  "Description",
                  style: Get.textTheme.titleMedium,
                ),
                YoSpace.height(),
                Text(
                  lorem,
                  textAlign: TextAlign.justify,
                  style: Get.textTheme.bodyMedium!.copyWith(
                    color: textColor.withOpacity(.75),
                  ),
                ),
                Text(
                  lorem,
                  textAlign: TextAlign.justify,
                  style: Get.textTheme.bodyMedium!.copyWith(
                    color: textColor.withOpacity(.75),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
