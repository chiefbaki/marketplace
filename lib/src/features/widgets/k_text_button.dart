import 'package:flutter/material.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class KTextBtn extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const KTextBtn({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(color: AppColors.violent),
        ));
  }
}
