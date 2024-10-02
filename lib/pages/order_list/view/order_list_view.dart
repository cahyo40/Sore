import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sore_book/pages/order_list/controller/order_list_controller.dart';
import 'package:sore_book/pages/order_list/view/widget/card_order_item.dart';
import 'package:yo_package/yo_package.dart';

import '../../../utils/constants/colors.dart';
import '../../bottom-navigation/view/bottom_navigation.dart';

class OrderListView extends GetView<OrderListController> {
  const OrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return YoBottomNavigationBarLayout(
      appBar: AppBar(
        title: const Text("Order List"),
      ),
      body: SafeArea(
        child: ListView(
          padding: YoPadding.listview,
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: "Search booking",
                prefixIcon: Icon(Clarity.search_line),
              ),
            ),
            YoSpace.height(size: 16),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.transparent,
                      border: Border.all(
                        color: textColor,
                        width: .75,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Filter & Sort",
                          style: Get.textTheme.bodySmall,
                        ),
                        YoSpace.width(),
                        Icon(
                          Iconsax.arrow_down_1_outline,
                          color: textColor,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ),
                YoSpace.width(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.transparent,
                      border: Border.all(
                        color: textColor,
                        width: .75,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Date",
                          style: Get.textTheme.bodySmall,
                        ),
                        YoSpace.width(),
                        Icon(
                          Iconsax.arrow_down_1_outline,
                          color: textColor,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            YoSpace.height(size: 32),
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: controller.orderVenues.length,
              itemBuilder: (_, index) {
                final model = controller.orderVenues[index];
                return CardOrderItem(model: model);
              },
            ),
            YoSpace.height(size: 85),
          ],
        ),
      ),
    );
  }
}
