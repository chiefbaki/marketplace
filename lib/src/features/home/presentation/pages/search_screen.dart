import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/features/home/presentation/widgets/search_form_field.dart';
import 'package:marketplace/src/features/home/presentation/widgets/search_result.dart';
import 'package:marketplace/src/features/widgets/k_text_button.dart';

@RoutePage()
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
                  KTextBtn(
                    onPressed: () => _pop(context),
                    title: S.of(context).cancel,
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
    context.router.maybePop();
  }
}

class SearchResultItem extends StatelessWidget {
  const SearchResultItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.punch_clock_rounded,
          size: 25.h,
          color: Colors.grey,
        ),
        const Expanded(
          child: SearchResult(),
        )
      ],
    );
  }
}
