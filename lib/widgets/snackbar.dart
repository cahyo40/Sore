// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/utils/constants/colors.dart';

class YoSnackbar {
  YoSnackbar._();
  static void show(
          {required String message, SnackBarType type = SnackBarType.Info}) =>
      Get.rawSnackbar(
        backgroundColor: snackbarBackgroundColor(type: type),
        message: message,
      );
}

enum SnackBarType { Info, Danger, Success, Warning }

Color snackbarBackgroundColor({required SnackBarType type}) {
  if (type == SnackBarType.Info) {
    return Colors.blue;
  } else if (type == SnackBarType.Danger) {
    return Colors.red;
  } else if (type == SnackBarType.Warning) {
    return Colors.amber;
  } else {
    return primaryColor;
  }
}
