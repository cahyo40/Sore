import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/profile/controller/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ProfileView')),
        body: const SafeArea(child: Text('ProfileViewController')));
  }
}
