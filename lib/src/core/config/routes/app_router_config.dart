import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/src/core/config/routes/app_router_names.dart';
import 'package:marketplace/src/features/home/presentation/pages/delivery_method_page.dart';
import 'package:marketplace/src/features/home/presentation/pages/home_page.dart';
import 'package:marketplace/src/features/home/presentation/pages/search_page.dart';

class AppRouterConfig {
  static final _rootKey = GlobalKey<NavigatorState>();
  static GoRouter routes = GoRouter(
      initialLocation: "/home",
      navigatorKey: _rootKey,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          name: RouterNames.home.name,
          path: "/home",
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            restorationId: state.pageKey.value,
            child: const HomePage(),
          ),
        ),
        GoRoute(
          name: RouterNames.delivery.name,
          path: "/delivery",
          pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              restorationId: state.pageKey.value,
              child: const DeliveryMethodPage()),
        ),
        GoRoute(
          path: "/search",
          name: RouterNames.search.name,
          pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              restorationId: state.pageKey.value,
              child: const SearchPage()),
        ),
      ]);
}
