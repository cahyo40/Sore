import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sore_book/pages/sign_in/controller/sign_in_controller.dart';
import 'package:sore_book/utils/constants/colors.dart';
import 'package:yo_package/yo_package.dart';

import '../../../widgets/back_button.dart';

class EmailVerificationView extends GetView<SignInController> {
  const EmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: YoButtonBack(
          onPressed: () {
            controller.signIn();
          },
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: YoPadding.listview,
          children: [
            YoSpace.height(size: Get.size.height * 0.1),
            Center(
              child: Card(
                color: primaryColor.withOpacity(.1),
                child: Padding(
                  padding: YoPadding.container,
                  child: Icon(
                    Clarity.email_solid,
                    size: Get.size.width * 0.25,
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            YoSpace.height(size: 24),
            Text(
              "Check your email",
              textAlign: TextAlign.center,
              style: Get.textTheme.headlineMedium,
            ),
            YoSpace.height(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "We have sent a password recover instructions to your email",
                textAlign: TextAlign.center,
                style: Get.textTheme.bodyMedium,
              ),
            ),
            YoSpace.height(size: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "if email has been verified, sign in",
                textAlign: TextAlign.center,
                style: Get.textTheme.bodyMedium,
              ),
            ),
            YoSpace.height(size: 16),
            ElevatedButton(
              onPressed: () => controller.backToSignIn(),
              child: Text(
                "Sign In",
                style: Get.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            YoSpace.height(size: Get.size.height * 0.2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Did not receive the email? Check your spam filter or try again in ",
                      style: Get.textTheme.bodyMedium,
                    ),
                    TextSpan(
                      text: "Forgot Password",
                      style: Get.textTheme.bodyMedium!.copyWith(
                        color: secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => controller.forgotPassword(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
