// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ItemBottomNavModel {
  IconData icon;
  IconData iconActive;
  String title;
  Widget body;
  GetxController controller;
  String appRoute;
  ItemBottomNavModel({
    required this.icon,
    required this.iconActive,
    required this.title,
    required this.body,
    required this.controller,
    required this.appRoute,
  });
}
