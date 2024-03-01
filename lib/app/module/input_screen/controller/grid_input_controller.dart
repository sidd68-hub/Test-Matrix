import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:test_pune/app/core/routes/app_routes.dart';
import 'package:test_pune/app/core/routes/routes_args.dart';

class GridInputController extends GetxController {
  final TextEditingController rowsController = TextEditingController();
  final TextEditingController colsController = TextEditingController();

  void navigateToNextScreen() {
    if (rowsController.text.isNotEmpty && colsController.text.isNotEmpty) {
      int rows = int.tryParse(rowsController.text) ?? 0;
      int columns = int.tryParse(rowsController.text) ?? 0;
      if (rows > 0 && columns > 0) {
        Get.toNamed(Routes.gridEntryScreen.name, arguments: {
          RouteParam.rows.name: rows,
          RouteParam.columns.name: columns,
        });
      }
    }
  }
}
