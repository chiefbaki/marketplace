import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:marketplace/src/core/config/routes/app_router_names.dart';
import 'package:marketplace/src/features/home/presentation/pages/home_page.dart';

class AppRouterConfig {
  static final _rootKey = GlobalKey<NavigatorState>();
  static GoRouter routes = GoRouter(
      initialLocation: RouterNames.home.name,
      navigatorKey: _rootKey,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: RouterNames.home.name,
          pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              restorationId: state.pageKey.value,
              child: const HomePage()),
        )
      ]);
}
