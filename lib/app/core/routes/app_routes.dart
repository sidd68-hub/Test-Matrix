enum Routes {
  splashScreen("/splash_screen"),
  gridInputScreen("/grid_input_screen"),
  gridEntryScreen("/grid_entry_screen"),
  gridDisplayScreen("/grid_display_screen");

  const Routes(this.pathName);
  final String pathName;
  String get name {
    return pathName;
  }
}
