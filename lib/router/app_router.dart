import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const homeRoute = HomeScreen.nameRoute;

  static const screensOptions = <_ScreenRoute>[
    _ScreenRoute(
      route: homeRoute,
      screen: HomeScreen(),
    ),
    _ScreenRoute(
      route: SettingsScreen.nameRoute,
      screen: SettingsScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> get getAppRoutes {
    final appRoutes = <String, Widget Function(BuildContext)>{};
    for (final option in screensOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }
    return appRoutes;
  }
}

class _ScreenRoute {
  final String route;
  final Widget screen;

  const _ScreenRoute({
    required this.route,
    required this.screen,
  });
}