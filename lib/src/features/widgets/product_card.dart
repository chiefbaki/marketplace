import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/widgets/buttons/c_icon_button.dart';
import 'package:marketplace/src/features/widgets/dicsount_container.dart';
import 'package:marketplace/src/utils/resources/resources.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: REdgeInsets.only(left: 16),
          padding: REdgeInsets.all(8),
          constraints: const BoxConstraints(
            maxWidth: 200,
          ).w,
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12).r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        Images.prod,
                        width: 40.w,
                        height: 100.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                    12.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        const DiscountContainer()
                      ],
                    ),
                    4.horizontalSpace,
                    Text(
                      "1025 c",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.lineThrough),
                    ),
                    8.verticalSpace,
                    Text(
                      "Эмульсия G.LOVE для умывания с азиатской центелой",
                      maxLines: 3,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                          height: 1.2),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: 30,
          top: 10,
          child: CButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                Images.vector,
                height: 19.h,
              )),
        )
      ],
    );
  }
}
