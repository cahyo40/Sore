import 'package:get/get.dart';
import 'package:sore_book/pages/sign_in/view/email_verification_view.dart';

import '../pages/forgot_password/controller/forgot_password_binding.dart';
import '../pages/forgot_password/view/forgot_password_view.dart';
import '../pages/home/controller/home_binding.dart';
import '../pages/home/view/home_view.dart';
import '../pages/sign_in/controller/sign_in_binding.dart';
import '../pages/sign_in/view/sign_in_view.dart';
import '../pages/sign_up/controller/sign_up_binding.dart';
import '../pages/sign_up/view/sign_up_view.dart';
import '../pages/splashscreen/controller/splashscreen_binding.dart';
import '../pages/splashscreen/view/splashscreen_view.dart';

part 'app_name.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: AppRoute.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      title: "Home",
    ),
    GetPage(
      name: AppRoute.SIGNIN,
      page: () => const SignInView(),
      binding: SignInBinding(),
      title: "Sign In",
    ),
    GetPage(
      name: AppRoute.SPLASHSCREEN,
      page: () => const SplashscreenView(),
      binding: SplashscreenBinding(),
      title: "Splash Screen",
    ),
    GetPage(
      name: AppRoute.SIGNUP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
      title: "Sign Up",
    ),
    GetPage(
      name: AppRoute.FORGOTPASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
      title: "Forgot Password",
    ),
    GetPage(
      name: AppRoute.EMAILVERIFICATION,
      page: () => const EmailVerificationView(),
      binding: SignInBinding(),
      title: "Email Verification",
    ),
  ];
}
