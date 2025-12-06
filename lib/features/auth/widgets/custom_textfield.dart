import 'package:flutter/material.dart';
import 'package:rentora/core/constants/app_colors.dart';

class CostumTextfield extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool obscure;
  final Widget? suffix;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  const CostumTextfield({
      required this.hint,
    required this.controller,
     required this.validator,
    this.obscure = false,
    this.suffix,
    this.keyboardType,
    super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
       validator: validator,
      controller: controller,
      obscureText: obscure,
      keyboardType: keyboardType, // <-- Use it here
      style: const TextStyle(color: AppColors.white),
      cursorColor: AppColors.white,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: AppColors.lightGrey),
        suffixIcon: suffix,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: AppColors.lightBlue),
        ),
      ),
    );
  }
}
