import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:test_pune/app/core/routes/app_routes.dart';
import 'package:test_pune/app/core/routes/routes_args.dart';

class GridEntryController extends GetxController {
  RxList<List<String>> grid = <List<String>>[].obs;
  RxInt row = 0.obs;
  RxInt column = 0.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    Map<String, dynamic> arg = Get.arguments;
    row.value = arg[RouteParam.rows.name];
    column.value = arg[RouteParam.columns.name];
    super.onInit();
    initializeGrid();
  }

  void initializeGrid() {
    grid.value = List.generate(
      row.value,
      (row) => List.generate(
        column.value,
        (col) => '',
      ),
    );
  }

  void navigateToNextScreen() {
    Get.toNamed(Routes.gridDisplayScreen.name, arguments: {
      RouteParam.grid.name: grid,
    });
  }
}
