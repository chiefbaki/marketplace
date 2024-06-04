import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/utils/resources/resources.dart';

class ProfileListTile extends StatelessWidget {
  final String text;
  final Color color;
  const ProfileListTile({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      splashColor: AppColors.grey.withOpacity(0.4),
      contentPadding: EdgeInsets.zero,
      title: Text(
        text,
        style: context.textTheme.bodyLarge!.copyWith(color: color),
      ),
      trailing: SvgPicture.asset(Images.arrowRight),
    );
  }
}
