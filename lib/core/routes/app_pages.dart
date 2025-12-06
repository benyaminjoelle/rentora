import 'package:get/get.dart';
import 'package:rentora/core/routes/app_routes.dart';
import 'package:rentora/features/auth/bindings/login_binding.dart';
import 'package:rentora/features/auth/bindings/signup_bindings.dart';
import 'package:rentora/features/auth/view/login_view.dart';
import 'package:rentora/features/auth/view/signup_view.dart';
import 'package:rentora/features/auth/view/welcome_view.dart';
import 'package:rentora/features/home/bindings/home_binding.dart';
import 'package:rentora/features/home/view/home_view.dart';
import 'package:rentora/splash.dart';

class AppPages {
  static final pages = [
  GetPage(
    name: AppRoutes.login,
    page:()=>const LoginView(),
    binding:LoginBinding()
     ),
     GetPage(
      name: AppRoutes.signup,
      page: () => const SignupView(),
      binding: SignupBinding()),

       GetPage(
        name: '/',
         page: () => const MySplash()),

    GetPage(
      name: '/welcome',
       page: () => const WelcomeView()),

       GetPage(
        name: AppRoutes.home,
        page: ()=> const HomeView(),
        binding:HomeBinding() )
  ];
}
