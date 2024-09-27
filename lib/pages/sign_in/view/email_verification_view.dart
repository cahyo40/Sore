import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/sign_in/controller/sign_in_controller.dart';

class EmailVerificationView extends GetView<SignInController> {
  const EmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('EmailVerificationView')),
        body: const SafeArea(child: Text('EmailVerificationViewController')));
  }
}
