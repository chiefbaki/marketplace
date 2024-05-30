import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/src/core/config/routes/app_router_names.dart';
import 'package:marketplace/src/features/basket/presentation/pages/basket_page.dart';
import 'package:marketplace/src/features/home/presentation/pages/notification_page.dart';
import 'package:marketplace/src/features/search/presentation/pages/category_result_page.dart';
import 'package:marketplace/src/features/widgets/bottom_navbar.dart';
import 'package:marketplace/src/features/home/presentation/pages/delivery_method_page.dart';
import 'package:marketplace/src/features/home/presentation/pages/home_page.dart';
import 'package:marketplace/src/features/home/presentation/pages/search_page.dart';
import 'package:marketplace/src/features/search/presentation/pages/search_page.dart';
import 'package:marketplace/src/features/user_profile/presentation/pages/user_info_page.dart';

class AppRouterConfig {
  static final _rootKey = GlobalKey<NavigatorState>();
  static final _shellHomeKey = GlobalKey<NavigatorState>(debugLabel: "HomeKey");
  static final _shellSearch =
      GlobalKey<NavigatorState>(debugLabel: "SearchKey");
  static final _shellBasket =
      GlobalKey<NavigatorState>(debugLabel: "BasketKey");
  static final _shellUserProfile =
      GlobalKey<NavigatorState>(debugLabel: "UserProfileKey");
  static GoRouter routes = GoRouter(
      initialLocation: "/search/categoryResult",
      navigatorKey: _rootKey,
      observers: [],
      debugLogDiagnostics: true,
      routes: [
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) =>
                KBottomNavBar(child: navigationShell),
            branches: [
              StatefulShellBranch(navigatorKey: _shellHomeKey, routes: [
                GoRoute(
                    name: RouterNames.home.name,
                    path: "/home",
                    pageBuilder: (context, state) => NoTransitionPage(
                          key: state.pageKey,
                          restorationId: state.pageKey.value,
                          child: const HomePage(),
                        ),
                    routes: [
                      GoRoute(
                        name: RouterNames.homeDelivery.name,
                        path: "delivery",
                        pageBuilder: (context, state) => NoTransitionPage(
                            key: state.pageKey,
                            restorationId: state.pageKey.value,
                            child: const DeliveryMethodPage()),
                      ),
                      GoRoute(
                        path: "search",
                        name: RouterNames.homeSearch.name,
                        pageBuilder: (context, state) => NoTransitionPage(
                            key: state.pageKey,
                            restorationId: state.pageKey.value,
                            child: const HomeSearchPage()),
                      ),
                      GoRoute(
                        path: "notification",
                        name: RouterNames.homeNotification.name,
                        pageBuilder: (context, state) => NoTransitionPage(
                            key: state.pageKey,
                            restorationId: state.pageKey.value,
                            child: const NotificationPage()),
                      ),
                    ]),
              ]),
              StatefulShellBranch(navigatorKey: _shellSearch, routes: [
                GoRoute(
                    path: "/search",
                    name: RouterNames.search.name,
                    pageBuilder: (context, state) => NoTransitionPage(
                        key: state.pageKey,
                        restorationId: state.pageKey.value,
                        child: const SearchPage()),
                    routes: [
                      GoRoute(
                        path: "categoryResult",
                        name: RouterNames.categoryResult.name,
                        pageBuilder: (context, state) => NoTransitionPage(
                            key: state.pageKey,
                            restorationId: state.pageKey.value,
                            child: const CategoryResultPage()),
                      )
                    ]),
              ]),
              StatefulShellBranch(navigatorKey: _shellBasket, routes: [
                GoRoute(
                  path: "/basket",
                  name: RouterNames.basket.name,
                  pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      restorationId: state.pageKey.value,
                      child: const BasketPage()),
                ),
              ]),
              StatefulShellBranch(navigatorKey: _shellUserProfile, routes: [
                GoRoute(
                  path: "/user-profile",
                  name: RouterNames.userProfile.name,
                  pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      restorationId: state.pageKey.value,
                      child: const UserInfoPage()),
                ),
              ])
            ]),
      ]);
}

class GoRouterObServer extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    debugPrint("pop --> $route");
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    debugPrint("push --> $route");
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    debugPrint("pop --> $route");
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    // TODO: implement didReplace
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    // TODO: implement didStartUserGesture
  }

  @override
  void didStopUserGesture() {
    // TODO: implement didStopUserGesture
  }

  @override
  // TODO: implement navigator
  NavigatorState? get navigator => throw UnimplementedError();
}
