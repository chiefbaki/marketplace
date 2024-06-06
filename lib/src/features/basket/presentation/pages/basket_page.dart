import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/basket/presentation/widgets/basket_prod_container.dart';
import 'package:marketplace/src/features/widgets/buttons/custom_elevated_button.dart';

const double _unit = 16;

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: false,
            pinned: true,
            primary: true,
            title: Text(
              S.of(context).basket,
              style: context.textTheme.titleLarge!.copyWith(
                  color: AppColors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SliverPadding(
            padding: REdgeInsets.symmetric(horizontal: _unit, vertical: 12),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding:
                        REdgeInsets.symmetric(horizontal: 12, vertical: 24),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12).r,
                        color: AppColors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BasketProdContainer(),
                        24.verticalSpace,
                        const BasketProdContainer(),
                        12.verticalSpace,
                        Text(
                          "4600 сом",
                          style: context.textTheme.bodyLarge!.copyWith(
                              color: AppColors.black,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  100.verticalSpace,
                  CElevatedBtn(
                    onPressed: () {},
                    text: S.of(context).order,
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
