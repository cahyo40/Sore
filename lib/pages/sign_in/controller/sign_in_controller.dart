import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  // Button function
  // sign in
  void signIn() {}
  // sign in by google
  void signInGoogle() {}
  // sign in by facebook
  void signInFacebook() {}
  // sign in by apple
  void signInApple() {}
  // sign up
  void signUp() {}
  // forgot password
  void forgotPassword() {}
}
