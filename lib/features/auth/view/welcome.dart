import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentora/core/constants/app_colors.dart';
import 'package:rentora/features/auth/view/login_view.dart';
import 'package:rentora/features/auth/widgets/custom_button.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/buildings1.jpg', fit: BoxFit.cover),
          ),

          Positioned(
            left: 20,
            right: 20,
            top: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rentora",
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  "Your key to a new Home.".tr,
                  style: TextStyle(color: AppColors.mainColor, fontSize: 18),
                ),
              ],
            ),
          ),

          Positioned(
            left: 20,
            right: 20,
            bottom: 70,
            child: CustomButton(
              onPressed: () {
                WidgetsBinding.instance.addPostFrameCallback((_) {
    Get.to(() => const LoginView());
  });
              },
              text: 'Get Started'.tr,
              textColor: AppColors.mainColor,
              iconColor: AppColors.mainColor,
            ),
          ),
          Positioned(
            left: 50,
            right: 50,
            bottom: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                    'English',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
Get.updateLocale(Locale('en'));

                  },
                ),
                Text(
                  '|',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  child: Text(
                    'العربية',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Get.updateLocale(Locale('ar'));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
