import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/buttons/c_elevated_button.dart';

const double _unit = 16;
const double _horizontalUnit = 24;
final BorderRadiusGeometry _radiusCircular = BorderRadius.circular(_unit).r;

class HomePageBanner extends StatelessWidget {
  const HomePageBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          REdgeInsets.symmetric(horizontal: _horizontalUnit, vertical: _unit),
      width: double.infinity,
      decoration:
          BoxDecoration(color: AppColors.red, borderRadius: _radiusCircular),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).explorennearYou,
            style: context.textTheme.headlineSmall!
                .copyWith(fontWeight: FontWeight.w700, height: 1.7),
          ),
          Text(
            S.of(context).findTheBestPlaceForYourTrip,
            style: context.textTheme.labelMedium!
                .copyWith(fontWeight: FontWeight.w700, height: 1.7),
          ),
          16.verticalSpace,
          CElevatedButton(
            onPressed: () {},
            color: AppColors.navyBlue,
            text: S.of(context).explore,
            textColor: AppColors.white,
          )
        ],
      ),
    );
  }
}
