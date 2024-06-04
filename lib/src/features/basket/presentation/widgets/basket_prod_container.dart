import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/basket/presentation/widgets/basket_btn.dart';
import 'package:marketplace/src/features/home/presentation/widgets/buttons/c_elevated_button.dart';
import 'package:marketplace/src/utils/resources/resources.dart';

class BasketProdContainer extends StatelessWidget {
  const BasketProdContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.lightGrey))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: REdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Image.asset(
              Images.prod,
              height: 110,
              width: 50,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Text(
                        "1025 c",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: AppColors.black,
                                fontWeight: FontWeight.w600),
                      ),
                    ),
                    CElevatedButton(
                      onPressed: () {},
                      color: AppColors.pinkSalt,
                      text: "-20%",
                      hor: 6,
                      ver: 2,
                      textColor: AppColors.hotPink,
                    ),
                  ],
                ),
                Text(
                  "1025 c",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.lineThrough),
                ),
                8.verticalSpace,
                Text(
                  "Эмульсия G.LOVE для умыванияс азиатской центелой",
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                      ),
                ),
                12.verticalSpace,
                Row(children: [
                  AddSubBtn(
                    onPressed: () {},
                  ),
                  12.horizontalSpace,
                  Text(
                    "1",
                    style: context.textTheme.titleSmall!
                        .copyWith(color: AppColors.black),
                  ),
                  12.horizontalSpace,
                  AddSubBtn(
                    onPressed: () {},
                  ),
                ]),
                24.verticalSpace
              ],
            ),
          )
        ],
      ),
    );
  }
}
