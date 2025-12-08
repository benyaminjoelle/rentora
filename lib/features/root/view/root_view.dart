import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentora/core/constants/app_colors.dart';

import '../controller/root_controller.dart';

class RootView extends StatelessWidget {
  RootView({super.key});

  final  controller = Get.find<RootController>();

  
  @override
  Widget build(BuildContext context) {
    
    return Obx(() => Scaffold(
      
           
          body: IndexedStack(
            index: controller.selectedIndex.value,
            children: controller.pages,
          ),
          bottomNavigationBar: SizedBox(
            
            height: 70,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.white,
              
          
              currentIndex: controller.selectedIndex.value,
              onTap: controller.changeIndex,
              selectedItemColor: AppColors.gold,
              unselectedItemColor: AppColors.mainColor,
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontSize: 14),
              showSelectedLabels: true,
              showUnselectedLabels: true,
            
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home,size: 25,), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.add_home,size: 25,), label: 'My house'),
                BottomNavigationBarItem(icon: Icon(Icons.notifications_active_rounded,size: 25,), label: 'notifications'),
                BottomNavigationBarItem(icon: Icon(Icons.person,size: 25,), label: 'Profile'),
              ],
            ),
          ),
        ));
  }
}
