import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const KAppBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackButton(
        color: AppColors.violent,
        style: const ButtonStyle(
          side: WidgetStatePropertyAll(BorderSide(width: 5)),
        ),
        onPressed: () => _pop(context),
      ),
      centerTitle: false,
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: AppColors.black, fontWeight: FontWeight.w600),
      ),
      actions: actions,
    );
  }

  void _pop(BuildContext context) {
    context.pop();
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
