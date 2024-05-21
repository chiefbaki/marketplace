import 'package:auto_route/auto_route.dart';
import 'package:marketplace/src/features/home/presentation/pages/delivery_method_screen.dart';
import 'package:marketplace/src/features/home/presentation/pages/home_screen.dart';
import 'package:marketplace/src/features/home/presentation/pages/search_screen.dart';
import 'package:marketplace/src/features/home/presentation/pages/test_screen.dart';

part 'app_router.gr.dart';

const int _duration = 3;

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            initial: true,
            page: HomeRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            durationInMilliseconds: _duration),
        CustomRoute(
            page: SearchRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            durationInMilliseconds: _duration),
        CustomRoute(
            page: TestRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            durationInMilliseconds: _duration),
        CustomRoute(
            page: DeliveryMethodRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn,
            durationInMilliseconds: _duration),
      ];
}
