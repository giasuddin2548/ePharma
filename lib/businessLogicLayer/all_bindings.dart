import 'package:ephrama/businessLogicLayer/all_controller.dart';
import 'package:get/get.dart';

class AllBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
    Get.lazyPut<CartScreenController>(() => CartScreenController());
  }
}