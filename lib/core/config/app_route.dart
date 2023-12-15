import 'package:arab_therapy_task/features/home_feature/views/home_screen/home_screen.dart';
import 'package:arab_therapy_task/features/home_feature/views/items_screen/items_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home_feature/views/splash_screen/splash_screen.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static final route = GoRouter(
      navigatorKey: navigatorKey,
      debugLogDiagnostics: true,
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          name: SplashScreen.route,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: HomeScreen.route,
          name: HomeScreen.route,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: ItemsScreen.route,
          name: ItemsScreen.route,
          builder: (context, state) => const ItemsScreen(),
        ),
      ]);
}
