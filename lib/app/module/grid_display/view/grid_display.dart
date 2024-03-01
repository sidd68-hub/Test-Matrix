import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test_pune/app/module/grid_display/controller/grid_display_controller.dart';

class GridDisplayScreen extends GetView<GridDisplayController> {
  const GridDisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid Display')),
      body: SingleChildScrollView(
        child: Obx(
          () => (!controller.isLoading.value)
              ? Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 300,
                        child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: controller.grid.length *
                              controller.grid[0].length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: controller.grid[0].length,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            int row = index ~/ controller.grid[0].length;
                            int col = index % controller.grid[0].length;
                            return Container(
                              color: controller.highlighted[row][col]
                                  ? Colors.yellow
                                  : (row + col) % 2 == 0
                                      ? Colors.blue
                                      : Colors.green,
                              child: Center(
                                child: Text(
                                  controller.grid[row][col],
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: controller.highlighted[row][col]
                                        ? Colors.red
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: controller.searchController,
                        decoration: const InputDecoration(
                            labelText: 'Enter Text to Search'),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              controller.searchAndHighlight(
                                  controller.searchController.text);
                            },
                            child: const Text('Search'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              controller.reset();
                            },
                            child: const Text('Reset'),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              : const Text(""),
        ),
      ),
    );
  }
}
