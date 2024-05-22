import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/k_elevated_btn.dart';
import 'package:marketplace/src/features/home/presentation/widgets/k_tab_controller.dart';
import 'package:marketplace/src/features/widgets/k_app_bar.dart';

class DeliveryMethodPage extends StatefulWidget {
  const DeliveryMethodPage({super.key});

  @override
  State<DeliveryMethodPage> createState() => _DeliveryMethodPageState();
}

class _DeliveryMethodPageState extends State<DeliveryMethodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(title: S.of(context).chooseOptions),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.6,
                child: const KTabController()),
            const Spacer(),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: KElevatedBtn(
                  onPressed: () {},
                  widget: Center(
                    child: Text(
                      S.of(context).order,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
