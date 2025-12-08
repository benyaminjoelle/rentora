import 'package:flutter/material.dart';
import 'package:rentora/core/constants/app_colors.dart';
import 'package:rentora/features/auth/widgets/custom_button.dart';

class MyhouseView extends StatelessWidget {
  const MyhouseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/salehouse.jpg',
                height: 240,
              ),

              const SizedBox(height: 32),

              Text(
                'Ready to sell?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColor,
                ),
              ),

              const SizedBox(height: 12),

              Text(
                'Add your home in just a few steps!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.mainColor,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 40),

              CustomButton(
                onPressed: () {
                  // navigate to add house page
                },
                text: "Let's get started",
                backgroundColor: AppColors.mainColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
