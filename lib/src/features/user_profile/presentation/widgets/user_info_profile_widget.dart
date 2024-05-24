import 'package:flutter/material.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class UserProfileInfoWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final EdgeInsets? padding;
  final Widget? widget;
  final double? size;
  final Color? color;
  const UserProfileInfoWidget(
      {super.key,
      required this.title,
      this.icon = Icons.keyboard_arrow_right,
      this.padding,
      this.size,
      this.color,
      this.widget});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        hoverColor:
            AppColors.textFieldColor.withOpacity(0.2), // Цвет при наведении
        splashColor:
            AppColors.textFieldColor.withOpacity(0.4), // Цвет при нажатии
        highlightColor: AppColors.textFieldColor.withOpacity(0.3),
        child: Container(
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppColors.black,
                        ),
                  ),
                  widget != null ? widget! : const SizedBox(),
                ],
              ),
              Icon(
                icon,
                size: size,
                color: color,
              )
            ],
          ),
        ),
      ),
    );
  }
}
