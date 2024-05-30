import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final List<Widget>? actions;
  const KAppBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackButton(
        color: AppColors.primaryColor,
        style: const ButtonStyle(
          side: WidgetStatePropertyAll(BorderSide(width: 5)),
        ),
        onPressed: () => _pop(context),
      ),
      centerTitle: false,
      title: title,
      actions: actions,
    );
  }

  void _pop(BuildContext context) {
    context.pop();
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
