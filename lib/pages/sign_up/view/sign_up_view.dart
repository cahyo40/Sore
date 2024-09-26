import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sore_book/pages/sign_up/controller/sign_up_controller.dart';
import 'package:sore_book/utils/validation/required.dart';
import 'package:yo_package/yo_package.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/images.dart';
import '../../../utils/validation/email.dart';
import '../../../utils/validation/password.dart';
import '../../../widgets/loading.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: controller.formSignUp,
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
                'Sign Up for Free',
                textAlign: TextAlign.center,
                style: Get.textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              YoSpace.height(size: 24),

              // name area
              Text("Fullname", style: Get.textTheme.bodyMedium),
              YoSpace.height(),
              TextFormField(
                validator: (value) =>
                    RequiredValidator.validate(value, "Fullname"),
                // controller: controller.email,

                decoration: const InputDecoration(
                  hintText: "Enter your fullname",
                  prefixIcon: Icon(Clarity.user_solid),
                ),
              ),
              YoSpace.height(size: 16),
              // Email Textfield area
              Text("Email Address", style: Get.textTheme.bodyMedium),
              YoSpace.height(),
              TextFormField(
                validator: (value) => EmailValidator.validate(value),
                // controller: controller.email,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: "Enter your valid email",
                  prefixIcon: Icon(Clarity.email_solid),
                ),
              ),
              YoSpace.height(size: 16),
              // password area
              Text("Password", style: Get.textTheme.bodyMedium),
              YoSpace.height(),
              Obx(
                () => TextFormField(
                  controller: controller.password,
                  validator: (value) =>
                      PasswordValidator.validatePassword(value),
                  obscureText: controller.obsecureText.value,
                  decoration: InputDecoration(
                    hintText: "Enter your secure password",
                    prefixIcon: const Icon(Clarity.lock_solid),
                    suffixIcon: InkWell(
                      onTap: () => controller.changeObsecureText(),
                      child: Icon(
                        controller.obsecureText.isTrue
                            ? Clarity.eye_show_line
                            : Clarity.eye_hide_line,
                      ),
                    ),
                  ),
                ),
              ),
              // confirm password area
              YoSpace.height(size: 16),
              Text("Confirm Password", style: Get.textTheme.bodyMedium),
              YoSpace.height(),
              Obx(
                () => TextFormField(
                  controller: controller.confirmPassword,
                  validator: (value) =>
                      PasswordValidator.validateConfirmPassword(
                          value, controller.password.text),
                  obscureText: controller.obsecureTextC.value,
                  decoration: InputDecoration(
                    hintText: "Confirm your password",
                    prefixIcon: const Icon(Clarity.lock_solid),
                    suffixIcon: InkWell(
                      onTap: () => controller.changeObsecureTextC(),
                      child: Icon(
                        controller.obsecureTextC.isTrue
                            ? Clarity.eye_show_line
                            : Clarity.eye_hide_line,
                      ),
                    ),
                  ),
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
                              ? () => controller.signUp()
                              : null,
                          child: Text(
                            "Sign Up",
                            style: Get.textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                ),
              ),
              YoSpace.height(size: 24),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Already have an account? ",
                      style: Get.textTheme.bodyMedium,
                    ),
                    TextSpan(
                      text: "Sign In",
                      style: Get.textTheme.bodyMedium!.copyWith(
                        color: secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          controller.signIn();
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
