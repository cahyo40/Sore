import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/order_list/controller/order_list_controller.dart';
import 'package:sore_book/pages/order_list/model/order_venue_model.dart';
import 'package:sore_book/utils/constants/colors.dart';
import 'package:sore_book/utils/constants/images.dart';
import 'package:sore_book/utils/helpers/curency.dart';
import 'package:sore_book/utils/helpers/date.dart';
import 'package:yo_package/yo_package.dart';

class CardOrderItem extends GetView<OrderListController> {
  final OrderVenueModel model;
  const CardOrderItem({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: YoPadding.spaceColumn,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: textColor.withOpacity(.5),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: Get.width * 0.3,
              height: Get.width * 0.25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageAssets.venue),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.venueName,
                      maxLines: 1,
                      style: Get.textTheme.titleSmall,
                    ),
                    YoSpace.height(),
                    Text(
                      "${DateHelper.formatDateWithDay(DateTime.parse(model.date))} : ${model.time}",
                      maxLines: 1,
                      style: Get.textTheme.labelSmall,
                    ),
                    YoSpace.height(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          CurrencyHelper.rupiah(model.total),
                          maxLines: 1,
                          style: Get.textTheme.labelSmall,
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: controller.getColorByStatus(model.status),
                          ),
                          child: Text(
                            model.status,
                            style: Get.textTheme.labelSmall!.copyWith(
                              color: model.status == "Pending"
                                  ? backgroundColor
                                  : textColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
