import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/generated/l10n.dart';
import 'package:marketplace/src/features/home/presentation/widgets/search_form_field.dart';
import 'package:marketplace/src/features/home/presentation/widgets/search_result_item.dart';
import 'package:marketplace/src/features/widgets/k_text_button.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
                    title: Text(
                      S.of(context).cancel,
                      style: Theme.of(context).textTheme.titleSmall,
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