import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;
}

extension ColorExt on Color {
  static Color fromHex(String hex) {
    final hexCode = hex.replaceAll("#", "0xFF");
    return Color(int.parse(hexCode));
  }
}
