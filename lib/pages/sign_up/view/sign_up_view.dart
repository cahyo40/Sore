import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/sign_up/controller/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('SignUpView')),
        body: const SafeArea(child: Text('SignUpViewController')));
  }
}
