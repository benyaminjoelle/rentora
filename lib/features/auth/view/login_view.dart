import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentora/core/constants/app_colors.dart';
import 'package:rentora/core/routes/app_routes.dart';
import 'package:rentora/core/utils/validators.dart';
import 'package:rentora/features/auth/controller/login_controller.dart';
import 'package:rentora/features/auth/view/signup_view.dart';
import 'package:rentora/features/auth/widgets/custom_button.dart';
import 'package:rentora/features/auth/widgets/custom_textfield.dart';
import 'package:rentora/features/home/view/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: const Icon(
                        Icons.arrow_back,
                        color: AppColors.white,
                        size: 28,
                      ),
                    ),

                    SizedBox(height: 20),

                    Image.asset(
                      'assets/logowhite.png',
                      width: 350,
                      height: 180,
                    ),

                    SizedBox(height: 40),

                    Text(
                      'Phone Number:'.tr,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 10),

                    CostumTextfield(
                      validator: Validators.phoneValidation,
                      hint: "Enter Your Phone Number".tr,
                      controller: controller.number,
                      keyboardType: TextInputType.phone,
                    ),

                    SizedBox(height: 25),

                    Text(
                      'Password:'.tr,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 10),

                    Obx(
                      () => CostumTextfield(
                        validator: Validators.passwordValidation,
                        hint: 'Enter Your Password'.tr,
                        controller: controller.password,
                        obscure: controller.isPasswordHidden.value,
                        suffix: IconButton(
                          icon: Icon(
                            controller.isPasswordHidden.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: AppColors.lightBlue,
                          ),
                          onPressed: controller.togglePassword,
                        ),
                      ),
                    ),

                    SizedBox(height: 25),

                    CustomButton(
                      onPressed: () {
                        if (controller.formKey.currentState!.validate()) {
                          print("Fields valid!");
                          Get.offAllNamed(AppRoutes.home );
                        }
                      },
                      text: 'Login'.tr,
                    ),

                    Row(
                      children: [
                        Text(
                          "Don't have an account?".tr,
                          style: TextStyle(color: AppColors.white),
                        ),
                        TextButton(
                          onPressed: () => Get.toNamed(AppRoutes.signup),
                          child: Text(
                            'Signup'.tr,
                            style: TextStyle(color: AppColors.lightBlue),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
