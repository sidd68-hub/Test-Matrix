import 'package:get/instance_manager.dart';
import 'package:test_pune/app/module/input_screen/controller/grid_input_controller.dart';

class GridInputBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(GridInputController());
  }
}
