import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final number = TextEditingController();
  final password = TextEditingController();
  var isPasswordHidden = true.obs;
  void togglePassword() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }
}
