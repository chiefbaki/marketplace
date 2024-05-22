import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/deliver_item_notification.dart';
import 'package:marketplace/src/features/widgets/k_app_bar.dart';
import 'package:marketplace/src/features/widgets/k_text_button.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(
        title: S.of(context).notifications,
        actions: [
          PopupMenuButton(
              elevation: 3,
              icon: const Icon(
                Icons.more_vert,
                color: AppColors.violent,
              ),
              style: ButtonStyle(
                  padding: WidgetStatePropertyAll(REdgeInsets.all(5))),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              position: PopupMenuPosition.under,
              itemBuilder: (_) => [
                    PopupMenuItem(
                      child: PopupMenuItem(
                          child: Text(
                        S.of(context).delete,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: AppColors.red),
                      )),
                    )
                  ])
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: REdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              padding: REdgeInsets.all(18),
              decoration: BoxDecoration(
                  color: AppColors.darkPink,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Text(
                    "Сотрудники Wildberries никогда не спрашивают данные аккаунт",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: AppColors.black, fontWeight: FontWeight.w700),
                  ),
                  10.verticalSpace,
                  Text(
                    "Никому не сообщайте номер телефона и коды для входа - ими интересуются только мошенники",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: AppColors.black),
                  ),
                ],
              ),
            ),
            Dismissible(
                direction: DismissDirection.endToStart,
                dragStartBehavior: DragStartBehavior.down,
                onResize: () {
                  debugPrint("onResize");
                },
                background: Container(
                  padding: REdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(
                    color: AppColors.red,
                  ),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Удалить",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: AppColors.white),
                  ),
                ),
                key: UniqueKey(),
                child: const DeliverItemNotification()),
            const Spacer(),
            Container(
              width: double.infinity,
              margin: REdgeInsets.fromLTRB(5, 0, 5, 16),
              padding: REdgeInsets.all(16),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 0.3,
                        color: AppColors.black.withOpacity(0.5))
                  ],
                  color: AppColors.black,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Text(
                    "2",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  5.horizontalSpace,
                  Expanded(
                    child: Text(
                      S.of(context).notificationIsRemoved,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  KTextBtn(
                      onPressed: () {},
                      title: Text(
                        S.of(context).cancel,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
