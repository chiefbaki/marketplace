import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/login/presentation/widgets/login_form_field.dart';
import 'package:marketplace/src/features/login/presentation/widgets/read_only_field.dart';
import 'package:marketplace/src/features/widgets/buttons/c_elevated_button.dart';

class PhoneInputPage extends StatefulWidget {
  const PhoneInputPage({super.key});

  @override
  State<PhoneInputPage> createState() => _PhoneInputPageState();
}

class _PhoneInputPageState extends State<PhoneInputPage> {
  final _controller = TextEditingController();
  final _number = TextEditingController(text: "+996");
  final _focusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _number.dispose();
    _focusNode.dispose();
  }

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
                S.of(context).pleaseEnterYourPhoneNumberToReceiveSmsCode,
                style: context.textTheme.titleMedium!.copyWith(
                  color: AppColors.ashyGray,
                ),
              ),
              32.verticalSpace,
              Text(
                S.of(context).phoneNumber,
                style: context.textTheme.titleMedium!
                    .copyWith(color: AppColors.black),
              ),
              6.verticalSpace,
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ReadOnlyField(
                      controller: _number,
                    ),
                  ),
                  6.horizontalSpace,
                  Expanded(
                    flex: 4,
                    child: LoginTextField(
                      focusNode: _focusNode,
                      controller: _controller,
                      formKey: _formKey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CElevatedBtn(
                text: S.of(context).further,
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Processing Data'),
                        duration: Duration(milliseconds: 800),
                      ),
                    );
                  }
                  await Future.delayed(const Duration(seconds: 2));
                  _goToVerify();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _goToVerify() {
    context.go("/login/verify-number");
  }
}
