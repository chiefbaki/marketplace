import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/src/core/config/routes/router_names.dart';
import 'package:marketplace/src/features/basket/presentation/pages/basket_page.dart';
import 'package:marketplace/src/features/basket/presentation/pages/order_page.dart';
import 'package:marketplace/src/features/login/presentation/pages/create_account_page.dart';
import 'package:marketplace/src/features/login/presentation/pages/verify_number_page.dart';
import 'package:marketplace/src/features/login/presentation/pages/phone_input_page.dart';
import 'package:marketplace/src/features/search/presentation/pages/category_result_page.dart';
import 'package:marketplace/src/features/search/presentation/pages/filter_page.dart';
import 'package:marketplace/src/features/search/presentation/pages/product_info_page.dart';
import 'package:marketplace/src/features/user_profile/presentation/pages/user_profile_page.dart';
import 'package:marketplace/src/features/widgets/bottom_navbar.dart';
import 'package:marketplace/src/features/home/presentation/pages/home_page.dart';
import 'package:marketplace/src/features/home/presentation/pages/search_page.dart';
import 'package:marketplace/src/features/search/presentation/pages/search_page.dart';
import 'package:marketplace/src/features/user_profile/presentation/pages/user_page.dart';

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
      initialLocation: "/phone-input",
      navigatorKey: _rootKey,
      observers: [GoRouterObServer()],
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: "/phone-input",
          name: RouterNames.phoneInputPage.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            restorationId: state.pageKey.value,
            child: const PhoneInputPage(),
          ),
        ),
        GoRoute(
          path: "/verify-number",
          name: RouterNames.verifyNumberPage.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            restorationId: state.pageKey.value,
            child: const VerifyNumberPage(),
          ),
        ),
        GoRoute(
          path: "/create-account",
          name: RouterNames.createAnAccount.name,
          pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              restorationId: state.pageKey.value,
              child: const CreateAccountPage()),
        ),
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
                      // GoRoute(
                      //   name: RouterNames.homeDelivery.name,
                      //   path: "delivery",
                      //   pageBuilder: (context, state) => NoTransitionPage(
                      //       key: state.pageKey,
                      //       restorationId: state.pageKey.value,
                      //       child: const DeliveryMethodPage()),
                      // ),
                      GoRoute(
                        path: "search",
                        name: RouterNames.homeSearch.name,
                        pageBuilder: (context, state) => NoTransitionPage(
                            key: state.pageKey,
                            restorationId: state.pageKey.value,
                            child: const HomeSearchPage()),
                      ),
                      // GoRoute(
                      //   path: "notification",
                      //   name: RouterNames.homeNotification.name,
                      //   pageBuilder: (context, state) => NoTransitionPage(
                      //       key: state.pageKey,
                      //       restorationId: state.pageKey.value,
                      //       child: const NotificationPage()),
                      // ),
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
                      ),
                      GoRoute(
                        path: "productInfo",
                        name: RouterNames.productInfo.name,
                        pageBuilder: (context, state) => NoTransitionPage(
                            key: state.pageKey,
                            restorationId: state.pageKey.value,
                            child: const ProductInfoPage()),
                      ),
                      GoRoute(
                        path: "filter",
                        name: RouterNames.filterPage.name,
                        pageBuilder: (context, state) => NoTransitionPage(
                            key: state.pageKey,
                            restorationId: state.pageKey.value,
                            child: const FilterPage()),
                      ),
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
                    routes: [
                      GoRoute(
                        path: "order",
                        name: RouterNames.orderPage.name,
                        pageBuilder: (context, state) => NoTransitionPage(
                            key: state.pageKey,
                            restorationId: state.pageKey.value,
                            child: const OrderPage()),
                      )
                    ]),
              ]),
              StatefulShellBranch(navigatorKey: _shellUserProfile, routes: [
                GoRoute(
                    path: "/user",
                    name: RouterNames.user.name,
                    pageBuilder: (context, state) => NoTransitionPage(
                        key: state.pageKey,
                        restorationId: state.pageKey.value,
                        child: const UserPage()),
                    routes: [
                      GoRoute(
                        path: "profile",
                        name: RouterNames.userProfile.name,
                        pageBuilder: (context, state) => NoTransitionPage(
                            key: state.pageKey,
                            restorationId: state.pageKey.value,
                            child: const UserProfilePage()),
                      )
                    ]),
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
    debugPrint("replace --> $newRoute");
  }
}
