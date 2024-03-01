import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:test_pune/app/core/routes/app_routes.dart';
import 'package:test_pune/app/core/routes/routes_args.dart';

class GridDisplayController extends GetxController {
  RxList<List<String>> grid = <List<String>>[].obs;
  RxBool isLoading = false.obs;

  RxList<List<bool>> highlighted = <List<bool>>[].obs;

  Map<String, bool> high = {};

  TextEditingController searchController = TextEditingController();

  @override
  void onInit() {
    Map<String, dynamic> arg = Get.arguments;
    grid.value = arg[RouteParam.grid.name];
    super.onInit();
    initializeHighlighted();
  }

  void initializeHighlighted() {
    highlighted.value = List.generate(
      grid.length,
      (row) => List.generate(
        grid[0].length,
        (col) => false,
      ),
    );
  }

  void searchAndHighlight(String searchText) {
    isLoading.value = true;
    initializeHighlighted();

    searchText = searchText.toLowerCase(); // Convert search text to lowercase

    int numRows = grid.length;
    int numCols = grid[0].length;

    // For check in east direction
    for (int row = 0; row < numRows; row++) {
      for (int col = 0; col <= numCols - searchText.length; col++) {
        String textInDirection = '';
        for (int i = 0; i < searchText.length; i++) {
          textInDirection += grid[row][col + i]
              .toLowerCase(); // Convert grid text to lowercase
        }
        if (textInDirection == searchText) {
          for (int i = 0; i < searchText.length; i++) {
            highlighted[row][col + i] = true;
          }
        }
      }
    }

    // For check in south direction
    for (int col = 0; col < numCols; col++) {
      for (int row = 0; row <= numRows - searchText.length; row++) {
        String textInDirection = '';
        for (int i = 0; i < searchText.length; i++) {
          textInDirection += grid[row + i][col]
              .toLowerCase(); // Convert grid text to lowercase
        }
        if (textInDirection == searchText) {
          for (int i = 0; i < searchText.length; i++) {
            highlighted[row + i][col] = true;
          }
        }
      }
    }

    // For check in southeast direction
    for (int row = 0; row <= numRows - searchText.length; row++) {
      for (int col = 0; col <= numCols - searchText.length; col++) {
        String textInDirection = '';
        for (int i = 0; i < searchText.length; i++) {
          textInDirection += grid[row + i][col + i]
              .toLowerCase(); // Convert grid text to lowercase
        }
        if (textInDirection == searchText) {
          for (int i = 0; i < searchText.length; i++) {
            highlighted[row + i][col + i] = true;
          }
        }
      }
    }
    isLoading.value = false;
  }

  void reset() {
    Get.offAllNamed(Routes.gridInputScreen.name);
  }
}
