import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sore_book/pages/home/controller/home_controller.dart';
import 'package:sore_book/utils/constants/images.dart';
import 'package:yo_package/yo_package.dart';

import '../../../../utils/constants/colors.dart';

class CardNearbyHome extends GetView<HomeController> {
  final int index;
  const CardNearbyHome(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: YoPadding.spaceColumn,
      child: InkWell(
        onTap: () {
          controller.toDetailVenue();
        },
        child: Card(
          child: SizedBox(
            height: 120,
            child: Row(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(ImageAssets.venue),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    padding: YoPadding.container,
                    child: Row(
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sport Venue $index",
                                maxLines: 1,
                                style: Get.textTheme.bodyLarge!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Clarity.map_marker_solid,
                                    color: secondaryColor,
                                    size: 16,
                                  ),
                                  YoSpace.width(),
                                  Flexible(
                                    child: Text(
                                      "Wonosobo, Central Java",
                                      maxLines: 1,
                                      style: Get.textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Basketball",
                                style: Get.textTheme.labelSmall!.copyWith(
                                  color: textColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        YoSpace.width(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: textColor.withOpacity(1),
                            ),
                            child: index == 0
                                ? Icon(
                                    Clarity.bookmark_solid,
                                    color: primaryColor,
                                    size: 16,
                                  )
                                : const Icon(
                                    Clarity.bookmark_line,
                                    size: 16,
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
