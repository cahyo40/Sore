import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sore_book/pages/profile/controller/profile_controller.dart';

import '../../bottom-navigation/view/bottom_navigation.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const YoBottomNavigationBarLayout(
      body: Center(
        child: Text("Profile Page"),
      ),
    );
  }
}
