import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:test_pune/app/module/grid_entry/controller/grid_entry_controller.dart';

class GridEntryScreen extends GetView<GridEntryController> {
  const GridEntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<FocusNode> focusNodes = List.generate(
        controller.row.value * controller.column.value, (index) => FocusNode());
    return Scaffold(
      appBar: AppBar(title: const Text('Enter Alphabets')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Enter alphabets for each position'),
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                itemCount: controller.row.value * controller.column.value,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: controller.column.value,
                ),
                itemBuilder: (BuildContext context, int index) {
                  int row = index ~/ controller.column.value;
                  int col = index % controller.column.value;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      color: (row + col) % 2 == 0 ? Colors.blue : Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          focusNode: focusNodes[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          decoration: const InputDecoration(
                            counterText: '',
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.grey),
                            ),
                          ),
                          onChanged: (value) {
                            controller.grid[row][col] =
                                value.isNotEmpty ? value[0] : '';
                            if (value.isNotEmpty && value.length == 1) {
                              if (index < focusNodes.length - 1) {
                                FocusScope.of(context)
                                    .requestFocus(focusNodes[index + 1]);
                              }
                            }
                          },
                          maxLength: 1,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  controller.navigateToNextScreen();
                },
                child: const Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
