import 'package:get/get.dart';
import 'package:rentora/features/home/controller/home_controller.dart';
import 'package:rentora/features/root/controller/root_controller.dart';

class RootBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(()=>HomeController());
     Get.put<RootController>(RootController());
  }
}