import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/utils/constants/colors.dart';

import '../model/notification_model.dart';

class NotificationController extends GetxController {
  var notifications = <NotificationModel>[
    NotificationModel(
      title: "Booking Venue A",
      status: "Pending",
      description:
          "Your booking for Venue A is pending approval.", // Deskripsi untuk notifikasi
      createdDate: DateTime.now(), // Menambahkan parameter createdDate
      venueName: "Venue A", // Menambahkan parameter venueName
      isRead: false,
    ),
    NotificationModel(
      title: "Booking Venue B",
      status: "Confirmed",
      description:
          "Your booking for Venue B has been confirmed.", // Deskripsi untuk notifikasi
      createdDate: DateTime.now(), // Menambahkan parameter createdDate
      venueName: "Venue B", // Menambahkan parameter venueName
      isRead: true,
    ),
    NotificationModel(
      title: "Booking Venue C",
      status: "Cancelled",
      description:
          "Your booking for Venue C has been cancelled.", // Deskripsi untuk notifikasi
      createdDate: DateTime.now(), // Menambahkan parameter createdDate
      venueName: "Venue C", // Menambahkan parameter venueName
      isRead: false,
    ),
  ];

  List<String> statusList = ["Confirmed", "Pending", "Cancelled"];

  Color getColorByStatus(String status) {
    switch (status) {
      case 'Pending':
        return secondaryColor; // Warna untuk status Pending
      case 'Confirmed':
        return accentColor; // Warna untuk status Confirmed
      case 'Cancelled':
        return Colors.red; // Warna untuk status Cancelled
      default:
        return Colors.grey; // Warna default jika status tidak dikenali
    }
  }
}
