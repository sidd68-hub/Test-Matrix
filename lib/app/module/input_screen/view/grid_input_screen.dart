import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test_pune/app/module/input_screen/controller/grid_input_controller.dart';

class GridInputScreen extends GetView<GridInputController> {
  const GridInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enter Grid Size')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                "Please enter number of rows and column to create a grid"),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller.rowsController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Rows (m)'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controller.colsController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Columns (n)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => controller.navigateToNextScreen(),
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
