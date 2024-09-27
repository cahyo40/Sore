import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:yo_package/yo_package.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images.dart';
import '../../controller/home_controller.dart';

class CardPopularVenue extends GetView<HomeController> {
  final int index;
  const CardPopularVenue(
    this.index, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.toDetailVenue();
      },
      child: SizedBox(
        width: Get.size.width * 0.8,
        height: 275,
        child: Card(
          child: Column(
            children: [
              Container(
                height: 185,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(ImageAssets.venue),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      bottom: 8,
                      left: 8,
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
                    Positioned.fill(
                      top: 8,
                      right: 8,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
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
                                  )
                                : const Icon(Clarity.bookmark_line),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
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
                    YoSpace.height(),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
