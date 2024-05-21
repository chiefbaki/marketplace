import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

class KPopupMenuBtn extends StatelessWidget {
  const KPopupMenuBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        elevation: 7,
        icon: const Icon(Icons.more_vert),
        position: PopupMenuPosition.under,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16).r),
        itemBuilder: (context) => [
              PopupMenuItem(
                  child: Text(
                "Удалить",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: AppColors.black),
              )),
              PopupMenuItem(
                  child: Text("Скопировать адрес",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: AppColors.black))),
            ]);
  }
}
