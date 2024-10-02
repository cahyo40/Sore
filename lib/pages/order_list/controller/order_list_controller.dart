import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/utils/constants/colors.dart';

import '../model/order_venue_model.dart';

class OrderListController extends GetxController {
  final List<OrderVenueModel> orderVenues = [
    OrderVenueModel(
        id: 1,
        venueName: 'Venue A',
        date: '2023-10-01',
        total: 300000,
        time: '10:00', // Menggunakan format 24 jam
        status: 'Completed'),
    OrderVenueModel(
        id: 2,
        venueName: 'Venue B',
        date: '2023-10-05',
        total: 450000,
        time: '14:00', // Menambahkan parameter 'time' yang diperlukan
        status: 'Pending'),
    OrderVenueModel(
        id: 3,
        venueName: 'Venue C',
        date: '2023-10-10',
        total: 250000,
        time: '09:00', // Menambahkan parameter 'time' yang diperlukan
        status: 'Cancelled'),
    OrderVenueModel(
        id: 4,
        venueName: 'Venue D',
        date: '2023-10-15',
        total: 500000,
        time: '16:00', // Menambahkan parameter 'time' yang diperlukan
        status: 'Completed'),
  ];

  List<OrderVenueModel> get sortedOrderVenues {
    return orderVenues
      ..sort(
          (a, b) => DateTime.parse(b.date).compareTo(DateTime.parse(a.date)));
  }

  Color getColorByStatus(String status) {
    switch (status) {
      case 'Completed':
        return primaryColor;
      case 'Pending':
        return secondaryColor;
      case 'Cancelled':
        return Colors.red;
      default:
        return Colors.grey; // Warna default jika status tidak dikenali
    }
  }

  @override
  void onInit() {
    sortedOrderVenues;
    super.onInit();
  }
}
