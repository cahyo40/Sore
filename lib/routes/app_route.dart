import 'package:get/get.dart';

import '../pages/bottom-navigation/controller/bottom_navigation_binding.dart';
import '../pages/detail_venue/controller/detail_venue_binding.dart';
import '../pages/detail_venue/view/detail_venue_view.dart';
import '../pages/forgot_password/controller/forgot_password_binding.dart';
import '../pages/forgot_password/view/forgot_password_view.dart';
import '../pages/home/controller/home_binding.dart';
import '../pages/home/view/home_view.dart';
import '../pages/messages/controller/messages_binding.dart';
import '../pages/messages/view/messages_view.dart';
import '../pages/notification/controller/notification_binding.dart';
import '../pages/notification/view/notification_view.dart';
import '../pages/order_list/controller/order_list_binding.dart';
import '../pages/order_list/view/order_list_view.dart';
import '../pages/profile/controller/profile_binding.dart';
import '../pages/profile/view/profile_view.dart';
import '../pages/sign_in/controller/sign_in_binding.dart';
import '../pages/sign_in/view/email_verification_view.dart';
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
      bindings: [HomeBinding(), BottomNavigationBinding()],
      title: "Home",
    ),
    GetPage(
      name: AppRoute.ORDERLIST,
      page: () => const OrderListView(),
      bindings: [OrderListBinding(), BottomNavigationBinding()],
      title: "Order List",
    ),
    GetPage(
      name: AppRoute.MESSAGE,
      page: () => const MessagesView(),
      bindings: [MessagesBinding(), BottomNavigationBinding()],
      title: "Chat",
    ),
    GetPage(
      name: AppRoute.NOTIFICATION,
      page: () => const NotificationView(),
      bindings: [NotificationBinding(), BottomNavigationBinding()],
      title: "Notification",
    ),
    GetPage(
      name: AppRoute.PROFILE,
      page: () => const ProfileView(),
      bindings: [ProfileBinding(), BottomNavigationBinding()],
      title: "Profile",
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
    GetPage(
      name: AppRoute.DETAILVENUE,
      page: () => const DetailVenueView(),
      binding: DetailVenueBinding(),
      title: "Detail Venue",
    ),
  ];
}
