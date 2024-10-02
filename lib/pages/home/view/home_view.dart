import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sore_book/pages/bottom-navigation/view/bottom_navigation.dart';
import 'package:sore_book/pages/home/view/widget/card_nearby_home.dart';
import 'package:yo_package/yo_package.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/images.dart';
import '../controller/home_controller.dart';
import 'widget/card_popular_home.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return YoBottomNavigationBarLayout(
      body: ListView(
        padding: YoPadding.listview,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Clarity.map_marker_solid,
                    color: primaryColor,
                  ),
                  YoSpace.width(),
                  const Text("Wonosobo, Central Java"),
                ],
              ),
              CircleAvatar(
                backgroundImage: AssetImage(ImageAssets.logo),
              ),
            ],
          ),
          YoSpace.height(size: 24),
          SizedBox(
            width: Get.size.width * 0.5,
            child: Text(
              "Discover Sports Venues for Health and Fun",
              textAlign: TextAlign.left,
              style: Get.textTheme.headlineMedium,
            ),
          ),
          YoSpace.height(size: 24),
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: primaryColor.withOpacity(.1),
                    hintText: "Find sport venues",
                    prefixIcon: const Icon(Clarity.search_line),
                  ),
                ),
              ),
              YoSpace.width(),
              ElevatedButton(
                style: ElevatedButton.styleFrom().copyWith(
                  backgroundColor: WidgetStatePropertyAll(secondaryColor),
                  padding: const WidgetStatePropertyAll(
                    EdgeInsets.all(18),
                  ),
                ),
                onPressed: () {},
                child: Icon(
                  Clarity.filter_line,
                  color: backgroundColor,
                ),
              ),
            ],
          ),
          YoSpace.height(size: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sport Category",
                style: Get.textTheme.titleLarge,
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Text(
                    "See all",
                    style: Get.textTheme.bodyMedium!.copyWith(
                      color: secondaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
          YoSpace.height(size: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(4, (index) {
              return InkWell(
                onTap: () {},
                child: SizedBox(
                  width: Get.size.width * 0.2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        child: Padding(
                          padding: YoPadding.container,
                          child: Icon(
                            controller.listSport[index]['icon'],
                            color: textColor,
                          ),
                        ),
                      ),
                      YoSpace.height(),
                      Text(
                        "${controller.listSport[index]['title']}"
                            .capitalizeFirst!,
                        style: Get.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
          YoSpace.height(size: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular",
                style: Get.textTheme.titleLarge,
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Text(
                    "See all",
                    style: Get.textTheme.bodyMedium!.copyWith(
                      color: secondaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
          YoSpace.height(size: 16),
          SizedBox(
            width: double.infinity,
            height: 275,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (_, index) {
                return CardPopularVenue(index);
              },
            ),
          ),
          YoSpace.height(size: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nearby",
                style: Get.textTheme.titleLarge,
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Text(
                    "See all",
                    style: Get.textTheme.bodyMedium!.copyWith(
                      color: secondaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
          YoSpace.height(size: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount: 3,
            itemBuilder: (_, index) {
              return CardNearbyHome(index);
            },
          ),
          YoSpace.height(size: 85),
        ],
      ),
    );
  }
}
