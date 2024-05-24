import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/buttons/k_button.dart';
import 'package:marketplace/src/features/home/presentation/widgets/buttons/k_elevated_btn.dart';
import 'package:marketplace/src/utilsresources/resources.dart';

class ProductCard extends StatelessWidget {
  final Widget widget;
  const ProductCard({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppColors.pink,
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  Images.card,
                  height: 220.h,
                  width: 180.w,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "1025 c",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w600),
                        ),
                        5.horizontalSpace,
                        Text(
                          "1025 c",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                    7.verticalSpace,
                    Text(
                      "Aksdom",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppColors.black, fontWeight: FontWeight.w400),
                    ),
                    4.verticalSpace,
                    Text(
                      "Переходник для macbook type",
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: AppColors.black,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        KButton(
                          onPressed: () {},
                          icon: Icons.star,
                          color: AppColors.orange,
                          size: 25.h,
                        ),
                        Text(
                          "4,7",
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        5.horizontalSpace,
                        const Text(
                          "•",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        5.horizontalSpace,
                        Text(
                          "690 оценок",
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                    KElevatedBtn(onPressed: () {}, widget: widget)
                  ],
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            KButton(onPressed: () {}, icon: Icons.search),
            KButton(onPressed: () {}, icon: Icons.favorite)
          ],
        )
      ],
    );
  }
}
