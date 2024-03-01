import 'package:get/instance_manager.dart';
import 'package:test_pune/app/module/grid_display/controller/grid_display_controller.dart';

class GridDisplayBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(GridDisplayController());
  }
}
