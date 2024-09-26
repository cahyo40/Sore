import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/sign_in/controller/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('SignInView')),
        body: const SafeArea(child: Text('SignInViewController')));
  }
}
