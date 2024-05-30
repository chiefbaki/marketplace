import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/src/core/utils/extensions/extensions.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';
import 'package:marketplace/src/features/home/presentation/widgets/fields/c_static_search_bar.dart';
import 'package:marketplace/src/features/widgets/background/colored_safe_area.dart';
import 'package:marketplace/src/features/widgets/buttons/k_text_button.dart';
import 'package:marketplace/src/utils/resources/resources.dart';

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
        shrinkWrap: true,
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
            sliver: SliverList.builder(
                itemCount: 5,
                itemBuilder: (_, index) => Container(
                      margin: REdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                      color: AppColors.white),
                                ),
                                12.horizontalSpace,
                                Text(
                                  "Для лица",
                                  style: context.textTheme.bodyMedium!
                                      .copyWith(color: AppColors.darkGrey),
                                )
                              ],
                            ),
                          ),
                          SvgPicture.asset(Images.arrowRight)
                        ],
                      ),
                    )),
          )
        ],
      )),
    );
  }

  void _pop(BuildContext context) {
    context.pop();
  }
}
