import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:test_pune/app/core/routes/app_routes.dart';
import 'package:test_pune/app/module/grid_display/bindings/grid_display_bindings.dart';
import 'package:test_pune/app/module/grid_display/view/grid_display.dart';
import 'package:test_pune/app/module/grid_entry/bindings/grid_entry_bindings.dart';
import 'package:test_pune/app/module/grid_entry/view/grid_entry_screen.dart';
import 'package:test_pune/app/module/input_screen/bindings/grid_input_bindings.dart';
import 'package:test_pune/app/module/input_screen/view/grid_input_screen.dart';
import 'package:test_pune/app/module/splash_screen/view/splash_screen.dart';

class AppPages {
  static const initial = Routes.splashScreen;
  static final routes = [
    GetPage<MaterialPageRoute>(
      name: Routes.splashScreen.name,
      page: () => const SplashScreen(),
    ),
    GetPage<MaterialPageRoute>(
        name: Routes.gridInputScreen.name,
        page: () => const GridInputScreen(),
        binding: GridInputBindings()),
    GetPage<MaterialPageRoute>(
        name: Routes.gridEntryScreen.name,
        page: () => GridEntryScreen(),
        binding: GridEntryBindings()),
    GetPage<MaterialPageRoute>(
        name: Routes.gridDisplayScreen.name,
        page: () => const GridDisplayScreen(),
        binding: GridDisplayBindings()),
  ];
}
