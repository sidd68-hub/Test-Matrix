enum RouteParam {
  //New Routes
  rows("rows"),
  columns("columns"),
  grid("grid");

  const RouteParam(this.argumentName);
  final String argumentName;
  String get name {
    return argumentName;
  }
}
