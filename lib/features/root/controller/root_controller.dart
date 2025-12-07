import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentora/features/home/view/home_view.dart';
import 'package:rentora/features/myhouse/views/myhouse_view.dart';
import 'package:rentora/features/notifications/views/notifications_view.dart';
import 'package:rentora/features/profile/views/profile_view.dart';

class RootController extends GetxController {

  final List<Widget> pages = [
    HomeView(),
    MyhouseView(),
    NotificationsView(),
    ProfileView(),
  ];

  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
