import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  // Global key for form
  GlobalKey<FormState> formSignUp = GlobalKey<FormState>();

  // TextEditingController form
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController name = TextEditingController();

  // variable for active btn
  RxBool activeBtn = false.obs;
  // function for check status of ActiveBtn
  checkActiveBtn() {
    activeBtn.value = formSignUp.currentState!.validate();
  }

  // variable for loading
  RxBool loading = false.obs;

  RxBool obsecureText = true.obs;
  RxBool obsecureTextC = true.obs;

  // check obsecure text active or not
  bool isObsecureTextActive() => obsecureText.value == true;
  bool isObsecureTextCActive() => obsecureTextC.value == true;

  // change obsecure text value
  void changeObsecureText() {
    if (obsecureText.value == true) {
      obsecureText.value = false;
    } else {
      obsecureText.value = true;
    }
  }

  // change obsecure text confirm value
  void changeObsecureTextC() {
    if (obsecureTextC.value == true) {
      obsecureTextC.value = false;
    } else {
      obsecureTextC.value = true;
    }
  }

  void signUp() {
    loading.value = true;
    Future.delayed(const Duration(seconds: 2), () {
      loading.value = false;
    });
  }

  void signIn() {
    Get.back();
  }
}
