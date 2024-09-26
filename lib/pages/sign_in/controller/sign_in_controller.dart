import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/routes/app_route.dart';

class SignInController extends GetxController {
  // Variable
  // global key for form
  GlobalKey<FormState> formSignIn = GlobalKey<FormState>();
  // variable texteditingcontroller
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  // variable for password form
  RxBool obsecureText = true.obs;
  // check obsecure text active or not
  bool isObsecureTextActive() => obsecureText.value == true;
  // change obsecure text value
  void changeObsecureText() {
    if (obsecureText.value == true) {
      obsecureText.value = false;
    } else {
      obsecureText.value = true;
    }
  }

  // variable for active button
  RxBool activeBtn = false.obs;
  // function for change activeBtn value
  checkActiveBtn() {
    activeBtn.value = formSignIn.currentState!.validate();
  }

  // variable loading
  RxBool loading = false.obs;

  // Button function
  // sign in
  void signIn() {
    loading.value = true;
    Future.delayed(const Duration(seconds: 2), () {
      loading.value = false;
    });
  }

  // sign in by google
  void signInGoogle() {}
  // sign in by facebook
  void signInFacebook() {}
  // sign in by apple
  void signInApple() {}
  // sign up
  void signUp() {
    // go to Sign Up Pages
    Get.toNamed(AppRoute.SIGNUP);
  }

  // forgot password
  void forgotPassword() {}
}
