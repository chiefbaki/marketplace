import 'package:flutter/material.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class ColoredContainer extends StatelessWidget {
  final Widget child;
  final BorderRadiusGeometry borderRadiusGeometry;
  final Color color;
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final List<BoxShadow>? boxShadow;
  const ColoredContainer({
    super.key,
    required this.borderRadiusGeometry,
    required this.child,
    this.boxShadow,
    this.color = AppColors.textFieldColor,
    this.padding,
    this.margin,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadiusGeometry,
          boxShadow: boxShadow ??
              [
                BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 2.1,
                    color: AppColors.black.withOpacity(0.1),
                    offset: const Offset(0.4, 0.5))
              ]),
      child: child,
    );
  }
}
