import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/config/routes/router_names.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/login/presentation/widgets/otp_widget.dart';
import 'package:marketplace/src/features/widgets/buttons/custom_elevated_button.dart';
import 'package:marketplace/src/features/widgets/buttons/custom_text_button.dart';

class VerifyNumberPage extends StatefulWidget {
  const VerifyNumberPage({super.key});

  @override
  State<VerifyNumberPage> createState() => _VerifyNumberPageState();
}

class _VerifyNumberPageState extends State<VerifyNumberPage> {
  final List<TextEditingController> _controllers =
      List.generate(4, (i) => TextEditingController());

  @override
  void dispose() {
    super.dispose();
    _controllers.map((e) => e.dispose());
  }

  bool _isEnd = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Padding(
        padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).signIn,
              style: context.textTheme.titleLarge!.copyWith(
                  color: AppColors.black,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600),
            ),
            8.verticalSpace,
            Text(
              "Код отправлен на номер +996 500 000 000 Введите код ниже для проверки.",
              style: context.textTheme.titleSmall!.copyWith(
                color: AppColors.ashyGray,
              ),
            ),
            32.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _controllers.map((e) => OTP(controller: e)).toList(),
            ),
            24.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CTextBtn(
                    onPressed: _isEnd
                        ? () {
                            _isEnd = false;
                            debugPrint(_isEnd.toString());
                          }
                        : null,
                    title: S.of(context).sendAgain),
                !_isEnd
                    ? TweenAnimationBuilder<Duration>(
                        duration: const Duration(seconds: 10),
                        tween: Tween(
                            begin: const Duration(seconds: 10),
                            end: Duration.zero),
                        onEnd: () {
                          debugPrint('Timer ended');
                          setState(() {
                            _isEnd = !_isEnd;
                          });
                        },
                        builder: (BuildContext context, Duration value,
                            Widget? child) {
                          final minutes = value.inMinutes;
                          final seconds = value.inSeconds % 60;
                          return Padding(
                              padding: REdgeInsets.symmetric(vertical: 5),
                              child: Text('$minutes:$seconds',
                                  textAlign: TextAlign.center,
                                  style: context.textTheme.bodyLarge!
                                      .copyWith(color: AppColors.slategray)));
                        })
                    : const SizedBox()
              ],
            ),
            const Spacer(),
            CElevatedBtn(
                text: S.of(context).further,
                onPressed: () async {
                  await Future.delayed(const Duration(seconds: 1));
                  _goToVerify();
                })
          ],
        ),
      )),
    );
  }

  void _goToVerify() => context.goNamed(RouterNames.createAnAccount.name);
}
