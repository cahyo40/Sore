import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sore_book/pages/notification/controller/notification_controller.dart';
import 'package:sore_book/pages/notification/view/widget/card_notification_item.dart';
import 'package:sore_book/utils/constants/colors.dart';
import 'package:yo_package/yo_package.dart';

import '../../bottom-navigation/view/bottom_navigation.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return YoBottomNavigationBarLayout(
      body: SafeArea(
        child: ListView(
          padding: YoPadding.listview,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notification",
                  style: Get.textTheme.titleLarge,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        FontAwesome.check_double_solid,
                        color: secondaryColor,
                        size: 16,
                      ),
                      YoSpace.width(),
                      Text(
                        "Mark all read",
                        style: Get.textTheme.bodySmall!.copyWith(
                          color: secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            YoSpace.height(
              size: 16,
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.statusList.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: YoPadding.spaceRow,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: textColor,
                          width: 2,
                        ),
                      ),
                      height: 40,
                      child: Text(
                        controller.statusList[index],
                        style: Get.textTheme.bodySmall,
                      ),
                    ),
                  );
                },
              ),
            ),
            YoSpace.height(
              size: 32,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: controller.notifications.length,
              itemBuilder: (_, index) {
                final model = controller.notifications[index];
                return CardNotificationItem(model: model);
              },
            ),
            YoSpace.height(size: 85),
          ],
        ),
      ),
    );
  }
}
