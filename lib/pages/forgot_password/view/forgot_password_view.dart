import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/forgot_password/controller/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ForgotPasswordView')),
        body: const SafeArea(child: Text('ForgotPasswordViewController')));
  }
}
