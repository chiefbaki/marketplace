import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/delivery_button.dart';

class DeliverItemNotification extends StatelessWidget {
  const DeliverItemNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: REdgeInsets.all(18),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                blurRadius: 5,
                spreadRadius: 0.1,
                color: AppColors.black.withOpacity(0.2)),
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Сегодня, 16:09",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: AppColors.grey),
                  ),
                  5.verticalSpace,
                  Text(
                    "Не пропустите доставку",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: AppColors.black, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Icon(
                Icons.notification_add,
                color: AppColors.violent,
                size: 35.h,
              )
            ],
          ),
          5.verticalSpace,
          Text(
            "Подпишитесь на наши уведомления, чтобы сразу получать информацию о заказе",
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: AppColors.black),
          ),
          15.verticalSpace,
          SizedBox(
            width: double.infinity,
            child: TransparentButton(
                onPressed: () {},
                child: Text(
                  "Разрешить уведомления",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: AppColors.violent),
                )),
          )
        ],
      ),
    );
  }
}
