import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:rentora/core/constants/app_colors.dart';

import 'package:rentora/features/auth/view/welcome.dart';

class MySplash extends StatelessWidget {
  const MySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 250,
      backgroundColor:AppColors.mainColor,
      splash: Center(
        child: Image.asset(
          'assets/logowhite.png',
          width: 300,
          fit: BoxFit.contain,
        ),
      ),
      duration: 2000,
      splashTransition: SplashTransition.fadeTransition,
      nextScreen: const WelcomeView(),
    );
  }
}
