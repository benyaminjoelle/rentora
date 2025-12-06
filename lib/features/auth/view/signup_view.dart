import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentora/core/constants/app_colors.dart';
import 'package:rentora/core/utils/validators.dart';
import 'package:rentora/features/auth/controller/signup_controller.dart';
import 'package:rentora/features/auth/widgets/custom_button.dart';
import 'package:rentora/features/auth/widgets/custom_textfield.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignupController>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),

              
              child: Form(
                key: controller.formkey,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: AppColors.white,
                        size: 28,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Image.asset(
                      'assets/logowhite.png',
                      fit: BoxFit.contain,
                      width: 350,
                      height: 180,
                    ),

                    const SizedBox(height: 40),
                    Text(
                      'First Name:'.tr,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 10),

                    CostumTextfield(
                      validator: Validators.nameValidation,
                      hint: 'Enter Your First Name'.tr,
                      obscure: false,
                      controller: controller.firstName,
                    ),

                    const SizedBox(height: 25),

                    Text(
                      'Last Name:'.tr,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 10),

                    CostumTextfield(
                      validator: Validators.nameValidation,
                      hint: 'Enter Your Last Name'.tr,
                      obscure: false,
                      controller: controller.lastName,
                    ),

                    const SizedBox(height: 25),

                    Text(
                      'Phone Number:'.tr,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 10),

                    CostumTextfield(
                      validator: Validators.phoneValidation,
                      hint: 'Enter Your Phone Number'.tr,
                      obscure: false,
                      controller: controller.number,
                      keyboardType: TextInputType.number,
                    ),

                    const SizedBox(height: 25),

                    Text(
  'Date Of Birth:'.tr,
  style: TextStyle(
    color: AppColors.white,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  ),
),

FormField(
  validator: (_) => Validators.validateDOB(
    controller.selectedDay.value,
    controller.selectedMonth.value,
    controller.selectedYear.value,
  ),
  builder: (state) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Obx(() => Row(
            children: [
              // DAY
              Expanded(
                child: DropdownButtonFormField<int>(
                  initialValue: controller.selectedDay.value,
                  isExpanded: true,
                  dropdownColor: AppColors.mainColor,
                  style: TextStyle(color: AppColors.white),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightBlue),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightBlue, width: 2),
                    ),
                  ),
                  hint: Text("Day".tr, style: TextStyle(color: AppColors.white)),
                  items: List.generate(31, (i) => i + 1)
                      .map((day) => DropdownMenuItem(
                            value: day,
                            child: Text(day.toString(), style: TextStyle(color: AppColors.white)),
                          ))
                      .toList(),
                  onChanged: (value) => controller.selectedDay.value = value!,
                ),
              ),
              SizedBox(width: 12),

              // MONTH
              Expanded(
                child: DropdownButtonFormField<String>(
                  initialValue: controller.selectedMonth.value,
                  isExpanded: true,
                  dropdownColor: AppColors.mainColor,
                  style: TextStyle(color: AppColors.white),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightBlue),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightBlue, width: 2),
                    ),
                  ),
                  hint: Text("Month".tr, style: TextStyle(color: AppColors.white)),
                  items: [
                    "Jan","Feb","Mar","Apr","May","Jun",
                    "Jul","Aug","Sep","Oct","Nov","Dec"
                  ].map((m) => DropdownMenuItem(
                        value: m,
                        child: Text(m, style: TextStyle(color: AppColors.white)),
                      )).toList(),
                  onChanged: (value) => controller.selectedMonth.value = value!,
                ),
              ),
              SizedBox(width: 12),

              // YEAR
              Expanded(
                child: DropdownButtonFormField<int>(
                  initialValue: controller.selectedYear.value,
                  isExpanded: true,
                  dropdownColor: AppColors.mainColor,
                  style: TextStyle(color: AppColors.white),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightBlue),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightBlue, width: 2),
                    ),
                  ),
                  hint: Text("Year".tr, style: TextStyle(color: AppColors.white)),
                  items: List.generate(100, (i) => DateTime.now().year - i)
                      .map((year) => DropdownMenuItem(
                            value: year,
                            child: Text(year.toString(), style: TextStyle(color: AppColors.white)),
                          )).toList(),
                  onChanged: (value) => controller.selectedYear.value = value!,
                ),
              ),
            ],
          )),

      
      if (state.hasError)
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            state.errorText!,
            style: TextStyle(color: Colors.red, fontSize: 12),
          ),
        ),
    ],
  ),
),




                    SizedBox(height: 25),

                    Text(
                      'Add Your ID Photo:'.tr,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 10),

  

                    FormField(
  validator: (_) => Validators.validatePhoto(controller.fileName.value),
  builder: (state) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: state.hasError ? Colors.red : AppColors.lightGrey,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_for_work_rounded,
            color: AppColors.lightGrey,
            size: 40,
          ),
          Obx(() => Expanded(
  child: Text(
    controller.fileName.isEmpty
        ? 'Upload Your ID'.tr
        : controller.fileName.value,
    style: TextStyle(color: AppColors.lightGrey),
    overflow: TextOverflow.ellipsis,
    maxLines: 1,
  ),
),
),
          Spacer(),
          PopupMenuButton(
            icon: Icon(
              Icons.more_horiz,
              color: AppColors.lightGrey,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () => Future.delayed(
                  Duration.zero,
                  () => controller.pickFile(),
                ),
                child: Row(
                  children: [Icon(Icons.upload), Text('Upload'.tr)],
                ),
              ),
              PopupMenuItem(
                onTap: () => Future.delayed(
                  Duration.zero,
                  () => controller.pickFile(),
                ),
                child: Row(
                  children: [Icon(Icons.refresh), Text('Change'.tr)],
                ),
              ),
              PopupMenuItem(
                onTap: () => controller.deleteFile(),
                child: Row(
                  children: [Icon(Icons.delete, color: Colors.red), Text('Delete'.tr)],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  },
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
                        obscure: controller.isPasswordHidden.value,
                        controller: controller.password,
                        suffix: IconButton(
                          icon: Icon(
                            controller.isPasswordHidden.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: AppColors.lightBlue,
                          ),
                          onPressed: () {
                            controller.togglePassword();
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      'Confirm Password:'.tr,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    CostumTextfield(
                       validator: (value) =>
      Validators.confirmPassword(value, controller.password.text),
                      hint: 'Enter Your Password'.tr,
                      obscure: true,
                      controller: controller.confirmPassword,
                    ),

                    SizedBox(height: 10),

                    Obx(
                      () => Row(
                        children: [
                          Checkbox(
                            value: controller.isOwner.value,
                            activeColor: AppColors.lightBlue,
                            onChanged: (value) {
                              controller.makeOwner();
                            },
                          ),
                          SizedBox(width: 8),
                          Text(
                            'I am an owner'.tr,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 25),

                    CustomButton(
                      onPressed: () {
                        if (controller.formkey.currentState!.validate()) {
                          print('all good');
                        }
                      },
                      text: 'Login'.tr,
                    ),
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
