import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:yo_package/yo_package.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/images.dart';
import '../controller/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: YoPadding.listview,
          children: [
            Container(
              width: Get.size.width * 0.3,
              height: Get.size.width * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageAssets.logo),
                ),
              ),
            ),
            YoSpace.height(size: 16),
            Text(
              'Welcome Back',
              textAlign: TextAlign.center,
              style: Get.textTheme.displaySmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            YoSpace.height(size: 24),
            Text("Email Address", style: Get.textTheme.bodyMedium),
            YoSpace.height(),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter your valid email",
                prefixIcon: Icon(Clarity.email_solid),
              ),
            ),
            YoSpace.height(size: 16),
            Text("Password", style: Get.textTheme.bodyMedium),
            YoSpace.height(),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter your secure password",
                prefixIcon: Icon(Clarity.lock_solid),
              ),
            ),
            YoSpace.height(),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                  child: Text(
                    "Forgot password?",
                    style: Get.textTheme.bodyMedium!.copyWith(
                      color: secondaryColor,
                    ),
                  ),
                ),
              ),
            ),
            YoSpace.height(size: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Sign In",
                style: Get.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            YoSpace.height(size: 24),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    color: primaryColor.withOpacity(.15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Or",
                    style: Get.textTheme.bodySmall,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    color: primaryColor.withOpacity(.15),
                  ),
                ),
              ],
            ),
            YoSpace.height(size: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Brand(Brands.google, size: 24),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Brand(Brands.facebook, size: 24),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Brand(Brands.apple_logo, size: 24),
                ),
              ],
            ),
            YoSpace.height(size: 24),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account? ",
                    style: Get.textTheme.bodyMedium,
                  ),
                  TextSpan(
                      text: "Sign Up",
                      style: Get.textTheme.bodyMedium!.copyWith(
                        color: secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
