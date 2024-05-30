import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';

class CElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double hor;
  final double ver;
  final Color color;
  final Color textColor;
  const CElevatedButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.color,
      required this.textColor,
      this.hor = 18,
      this.ver = 7});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            elevation: 0,
            padding: REdgeInsets.symmetric(horizontal: hor, vertical: ver),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12).r)),
        child: Text(
          text,
          style: context.textTheme.titleSmall!
              .copyWith(color: textColor, fontWeight: FontWeight.w700),
        ));
  }
}
