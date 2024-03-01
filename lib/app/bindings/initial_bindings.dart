import 'package:get/instance_manager.dart';
import 'package:test_pune/app/module/splash_screen/controller/splash_controller.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
