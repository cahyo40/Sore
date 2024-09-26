import 'package:get/get.dart';
import 'package:sore_book/pages/home/controller/home_binding.dart';
import 'package:sore_book/pages/home/view/home_view.dart';
import 'package:sore_book/pages/sign_in/controller/sign_in_binding.dart';
import 'package:sore_book/pages/sign_in/view/sign_in_view.dart';
import 'package:sore_book/pages/sign_up/controller/sign_up_binding.dart';
import 'package:sore_book/pages/sign_up/view/sign_up_view.dart';
import 'package:sore_book/pages/splashscreen/controller/splashscreen_binding.dart';
import 'package:sore_book/pages/splashscreen/view/splashscreen_view.dart';

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
  ];
}
