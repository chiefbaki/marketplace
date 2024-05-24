import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/fields/search_form_field.dart';
import 'package:marketplace/src/features/home/presentation/widgets/search_result_item.dart';
import 'package:marketplace/src/features/widgets/background/colored_safe_area.dart';
import 'package:marketplace/src/features/widgets/buttons/k_text_button.dart';

class HomeSearchPage extends StatefulWidget {
  const HomeSearchPage({super.key});

  @override
  State<HomeSearchPage> createState() => _HomeSearchPageState();
}

class _HomeSearchPageState extends State<HomeSearchPage> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      child: Scaffold(
        body: Padding(
          padding: REdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SearchFormField(
                      controller: _controller,
                      focusNode: _focusNode,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  5.horizontalSpace,
                  KTextBtn(
                    onPressed: () => _pop(context),
                    title: Text(
                      S.of(context).cancel,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: AppColors.violent),
                    ),
                  )
                ],
              ),
              20.verticalSpace,
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (_, context) => Container(
                        margin: EdgeInsets.only(bottom: 10.h),
                        child: const SearchResultItem())),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _pop(BuildContext context) {
    context.pop();
  }
}
