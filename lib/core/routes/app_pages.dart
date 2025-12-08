import 'package:get/get.dart';
import 'package:rentora/core/routes/app_routes.dart';
import 'package:rentora/features/auth/bindings/login_binding.dart';
import 'package:rentora/features/auth/bindings/signup_bindings.dart';
import 'package:rentora/features/auth/view/login_view.dart';
import 'package:rentora/features/auth/view/signup_view.dart';
import 'package:rentora/features/auth/view/welcome_view.dart';
import 'package:rentora/features/home/bindings/home_binding.dart';
import 'package:rentora/features/home/view/home_view.dart';
import 'package:rentora/features/myhouse/views/myhouse_view.dart';
import 'package:rentora/features/notifications/views/notifications_view.dart';
import 'package:rentora/features/profile/views/profile_view.dart';
import 'package:rentora/features/root/bindings/root_bindings.dart';
import 'package:rentora/features/root/view/root_view.dart';
import 'package:rentora/splash.dart';

class AppPages {
  static final pages = [
        GetPage(
        name: AppRoutes.login,
        page:()=>const LoginView(),
        binding:LoginBinding()),
        GetPage(
        name: AppRoutes.signup,
        page: () => const SignupView(),
        binding: SignupBinding()),
        GetPage(
        name: AppRoutes.splash,
        page: () => const MySplash()),
        GetPage(
        name: AppRoutes.welcome,
        page: () => const WelcomeView()),
        GetPage(
        name: AppRoutes.home,
        page: ()=> const HomeView(),
        binding:HomeBinding() ),
        GetPage(
        name: AppRoutes.myhouse,
        page: () => const MyhouseView()),
        GetPage(
        name: AppRoutes.root,
        page: () =>  RootView(),
        binding: RootBindings()),
        GetPage(
        name: AppRoutes.notifications,
        page: () => const NotificationsView()),
        GetPage(
        name: AppRoutes.profile,
        page: () => const ProfileView()),
        
  ];
}
