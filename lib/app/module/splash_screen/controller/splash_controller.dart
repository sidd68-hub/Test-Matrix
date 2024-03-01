import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:test_pune/app/core/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    navigateToNextScreen();
    super.onInit();
  }

  void navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(Routes.gridInputScreen.name);
    });
  }
}
