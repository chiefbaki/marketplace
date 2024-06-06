import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/user_profile/presentation/widgets/profile_list_tile.dart';
import 'package:marketplace/src/features/widgets/background/colored_safe_area.dart';
import 'package:marketplace/src/features/widgets/buttons/custom_icon_button.dart';
import 'package:marketplace/src/core/utils/resources/resources.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              leading: CButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Images.arrowLeft,
                    height: 24.h,
                  )),
              title: Text(
                S.of(context).myProfile,
                style: context.textTheme.titleLarge!.copyWith(
                    color: AppColors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SliverPadding(
              padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 60.r,
                              backgroundImage: const AssetImage(Images.bigAva),
                            ),
                            Positioned(
                              right: 0,
                              child: CButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                    Images.messageEdit,
                                    height: 30.h,
                                  )),
                            )
                          ],
                        ),
                        12.horizontalSpace,
                        Text(
                          "Умар",
                          style: context.textTheme.titleLarge!.copyWith(
                              color: AppColors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    24.verticalSpace,
                    const ProfileListTile(
                      color: AppColors.black,
                      text: "Изменить Email",
                    ),
                    const ProfileListTile(
                      color: AppColors.black,
                      text: "Мои реквизиты",
                    ),
                    const ProfileListTile(
                      color: AppColors.red,
                      text: "Выйти из аккаунта",
                    ),
                    ProfileListTile(
                      color: AppColors.grey,
                      text: "Удалить аккаунт",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
