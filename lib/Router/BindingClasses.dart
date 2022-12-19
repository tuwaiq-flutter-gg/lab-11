import 'package:get/instance_manager.dart';
import 'package:hadeel_lab11/controllers/userController.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(userController());
  }
}
