import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/k_button.dart';
import 'package:marketplace/src/features/home/presentation/widgets/k_elevated_btn.dart';
import 'package:marketplace/src/utilsresources/resources.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

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
                    KElevatedBtn(
                      onPressed: () {},
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            size: 20.h,
                          ),
                          4.horizontalSpace,
                          Text(
                            "28 Май",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                          )
                        ],
                      ),
                    )
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
