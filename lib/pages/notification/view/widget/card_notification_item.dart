import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sore_book/pages/notification/controller/notification_controller.dart';
import 'package:sore_book/pages/notification/model/notification_model.dart';
import 'package:sore_book/utils/constants/colors.dart';
import 'package:sore_book/utils/helpers/date.dart';
import 'package:yo_package/yo_package.dart';

class CardNotificationItem extends GetView<NotificationController> {
  final NotificationModel model;

  const CardNotificationItem({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: YoPadding.spaceColumn,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: textColor.withOpacity(.15),
            width: 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 5,
              color: controller.getColorByStatus(model.status),
            ),
            YoSpace.width(),
            const CircleAvatar(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title,
                      style: Get.textTheme.bodyLarge,
                    ),
                    YoSpace.height(),
                    Text(
                      model.description,
                      style: Get.textTheme.labelMedium!.copyWith(
                        color: textColor.withOpacity(.5),
                      ),
                    ),
                    YoSpace.height(size: 4),
                    Text(
                      DateHelper.formatDate(model.createdDate),
                      style: Get.textTheme.labelSmall!.copyWith(
                        color: textColor.withOpacity(.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(
              Clarity.circle_solid,
              color: model.isRead ? Colors.transparent : accentColor,
              size: 16,
            ),
            YoSpace.width(),
          ],
        ),
      ),
    );
  }
}
