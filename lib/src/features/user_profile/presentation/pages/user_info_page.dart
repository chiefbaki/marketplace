import 'package:flutter/material.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/user_profile/presentation/widgets/bodies/user_profile_body.dart';
import 'package:marketplace/src/features/widgets/background/colored_safe_area.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredSafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldLightGreyColor,
        body: UserProfileBody(),
      ),
    );
  }
}
