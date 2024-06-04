import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/src/features/home/presentation/widgets/fields/c_static_search_bar.dart';
import 'package:marketplace/src/features/home/presentation/widgets/search_category_widget.dart';
import 'package:marketplace/src/features/widgets/background/colored_safe_area.dart';
import 'package:marketplace/src/features/widgets/buttons/c_text_button.dart';

const double _horUnit = 16;
const double _verUnit = 24;
final REdgeInsets _padding =
    REdgeInsets.fromLTRB(_horUnit, _verUnit, _horUnit, _verUnit);

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
          body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: _padding,
            sliver: SliverAppBar(
              automaticallyImplyLeading: false,
              flexibleSpace: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(child: CStaticSearchBar()),
                  10.horizontalSpace,
                  CTextBtn(onPressed: () {}, title: "Отмена")
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: REdgeInsets.symmetric(horizontal: _horUnit),
            sliver: SliverToBoxAdapter(
              child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (_, index) => Container(
                        margin: REdgeInsets.only(bottom: 10),
                        child: const SearchCategoryWidget(),
                      )),
            ),
          )
        ],
      )),
    );
  }

  void _pop(BuildContext context) {
    context.pop();
  }
}
