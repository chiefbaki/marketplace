import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/config/routes/router_names.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/login/presentation/widgets/login_form_field.dart';
import 'package:marketplace/src/features/widgets/buttons/custom_elevated_button.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).createAnAccount,
                style: context.textTheme.titleLarge!.copyWith(
                    color: AppColors.black,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600),
              ),
              16.verticalSpace,
              Text(
                S.of(context).inputYourFullname,
                style: context.textTheme.titleMedium!.copyWith(
                  color: AppColors.ashyGray,
                ),
              ),
              8.verticalSpace,
              LoginTextField(
                focusNode: _focusNode,
                controller: _controller,
                formKey: _formKey,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.text,
                hintText: S.of(context).inputName,
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
                  await Future.delayed(const Duration(seconds: 1));
                  debugPrint("work");
                  _goToHome();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _goToHome() => context.goNamed(RouterNames.home.name);
}
