import 'package:get/get.dart';
import 'package:rentora/features/root/controller/root_controller.dart';

class RootBindings extends Bindings{
  @override
  void dependencies() {
     Get.lazyPut<RootController>(() => RootController());
  }
}