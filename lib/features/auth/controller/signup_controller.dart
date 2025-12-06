import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  
  final formkey= GlobalKey<FormState>();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final number = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();


  var isPasswordHidden = true.obs;
  var isOwner = false.obs;
  var fileName = ''.obs;
  var filePath = ''.obs;
  var selectedDay = RxnInt();       // RxnInt because it can be null initially
  var selectedMonth = RxnString();  // RxnString because it can be null initially
  var selectedYear = RxnInt();      // RxnInt because it can be null initially

  void togglePassword() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void makeOwner() {
    isOwner.value = !isOwner.value;
  }

  Future<void> pickFile() async {
    final file = await FilePicker.platform.pickFiles();

    if (file != null) {
      fileName.value = file.files.single.name;
      filePath.value = file.files.single.path ?? '';
    }
  }

  void deleteFile() {
    fileName.value = '';
    filePath.value = '';
  }
}
