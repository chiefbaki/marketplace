import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/k_elevated_btn.dart';
import 'package:marketplace/src/features/home/presentation/widgets/k_tab_controller.dart';


class DeliveryMethodPage extends StatefulWidget {
  const DeliveryMethodPage({super.key});

  @override
  State<DeliveryMethodPage> createState() => _DeliveryMethodPageState();
}

class _DeliveryMethodPageState extends State<DeliveryMethodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: AppColors.violent,
          style: const ButtonStyle(
            side: WidgetStatePropertyAll(BorderSide(width: 5)),
          ),
          onPressed: () => _pop(context),
        ),
        centerTitle: false,
        title: Text(
          S.of(context).chooseOptions,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: AppColors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.72,
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
          80.verticalSpace
        ],
      ),
    );
  }

  void _pop(BuildContext context) {
    context.pop();
  }
}
