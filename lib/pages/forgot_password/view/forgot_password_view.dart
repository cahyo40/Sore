import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:yo_package/yo_package.dart';

import '../../../utils/constants/images.dart';
import '../../../widgets/back_button.dart';
import '../../../widgets/loading.dart';
import '../controller/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});

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
        child: Form(
          key: controller.formForgotPassword,
          onChanged: () {
            controller.checkActiveBtn();
          },
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
                'Forgot Password',
                textAlign: TextAlign.center,
                style: Get.textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              YoSpace.height(size: 24),
              Text("Email Address", style: Get.textTheme.bodyMedium),
              YoSpace.height(),
              TextFormField(
                validator: (value) => YoValidation.email(value),
                controller: controller.email,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: "Enter your valid email",
                  prefixIcon: Icon(Clarity.email_solid),
                ),
              ),
              YoSpace.height(size: 16),
              SizedBox(
                height: 60,
                child: Obx(
                  () => controller.loading.isTrue
                      ? const YoLoading()
                      : ElevatedButton(
                          onPressed: controller.activeBtn.value
                              ? () => controller.forgotPassword()
                              : null,
                          child: Text(
                            "Send Email",
                            style: Get.textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
