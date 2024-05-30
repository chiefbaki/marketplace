import 'package:flutter/material.dart';

class KButton extends StatelessWidget {
  final Function() onPressed;
  final Widget icon;
  final Color? iconColor;
  final double size;
  const KButton(
      {super.key,
      required this.onPressed,
      required this.icon,
      this.size = 28,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        style: IconButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        onPressed: onPressed,
        icon: icon);
  }
}
