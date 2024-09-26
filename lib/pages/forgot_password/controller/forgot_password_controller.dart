import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  // Global key for form
  GlobalKey<FormState> formForgotPassword = GlobalKey<FormState>();
  // variable texteditingcontroller
  TextEditingController email = TextEditingController();

  // variable for active button
  RxBool activeBtn = false.obs;
  // function for change activeBtn value
  checkActiveBtn() {
    activeBtn.value = formForgotPassword.currentState!.validate();
  }

  // variable loading
  RxBool loading = false.obs;

  // forgot password
  void forgotPassword() {
    Get.back(result: true);
  }

  // sign in
  void signIn() {
    Get.back();
  }
}
