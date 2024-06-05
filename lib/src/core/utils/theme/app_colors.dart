import 'package:flutter/material.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';

abstract class AppColors {
  static const Color white = Colors.white;
  static const Color red = Colors.red;
  static Color grey = ColorExt.fromHex("#A3A5AE");
  static Color darkGrey = ColorExt.fromHex("#52585B");
  static const Color black = Colors.black;
  static const Color green = Colors.green;
  static const Color scaffoldLightGreyColor =
      Color.fromARGB(255, 240, 240, 240);
  static const Color orange = Colors.orange;
  static const Color textFieldColor = Color.fromARGB(255, 230, 230, 230);
  static const Color darkPink = Color.fromARGB(
    255,
    245,
    221,
    242,
  );
  static Color primaryLightColor = ColorExt.fromHex("#FFB6C3");
  static Color primaryColor = ColorExt.fromHex("#FFECEF");
  static Color lightGrey = ColorExt.fromHex("#EBEBEB");
  static Color navyBlue = ColorExt.fromHex("#585DE4");
  static Color charcoal = ColorExt.fromHex("#52585B");
  static Color ashyGray = ColorExt.fromHex("#626576");
  static Color pinkSalt = ColorExt.fromHex("#FFCDD6");
  static Color whisper = ColorExt.fromHex("#F5F5F5");
  static Color hotPink = ColorExt.fromHex("#FF2D55");
  static Color lighterPink = ColorExt.fromHex("#FFB6C3");
  static Color slategray = ColorExt.fromHex("#A3A5AE");
  static const Color pink = Color(0xFFF2E6FE);
  static const Color searchFieldColor = Color.fromARGB(255, 242, 242, 242);
}
