import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentora/localization/local.dart';
import 'package:rentora/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       translations: AppTranslation(),
       locale: Locale('en'),
      home: const MySplash(),
    );
  }
}

