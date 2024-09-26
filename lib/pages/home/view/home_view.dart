import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/home/controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
      ),
      body: const SafeArea(
        child: Text('HomeViewController'),
      ),
    );
  }
}
