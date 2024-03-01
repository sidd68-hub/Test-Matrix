import 'package:get/instance_manager.dart';
import 'package:test_pune/app/module/grid_entry/controller/grid_entry_controller.dart';

class GridEntryBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(GridEntryController());
  }
}
