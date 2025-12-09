import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentora/core/routes/app_pages.dart';
import 'package:rentora/localization/local.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(splashColor: Colors.transparent),

      translations: AppTranslation(),
      locale: Locale('en'),
      initialRoute: '/',
      getPages: AppPages.pages,
    );
  }
}
