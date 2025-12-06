import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentora/features/home/view/home_view.dart';
import 'package:rentora/features/myhouse/views/myhouse_view.dart';
import 'package:rentora/features/notifications/views/notifications_view.dart';
import 'package:rentora/features/profile/views/profile_view.dart';
import 'root_controller.dart';

class RootView extends StatelessWidget {
  RootView({super.key});

  final RootController controller = Get.put(RootController());

  final List<Widget> pages = [
    HomeView(),
    MyhouseView(),
    NotificationsView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: pages[controller.selectedIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: controller.changeIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        ));
  }
}
