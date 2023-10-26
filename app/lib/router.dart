import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playground/screens/playground/tab/main.dart';

import 'screens/playground/home/main.dart';
import 'screens/playground/main.dart';
import 'screens/home/main.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _navigatorKey,
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      name: '/playground',
      path: '/playground',
      builder: (BuildContext context, GoRouterState state) {
        return const PlaygroundSelectionScreen();
      },
    ),
    GoRoute(
      name: '/playground/home',
      path: '/playground/home',
      builder: (BuildContext context, GoRouterState state) {
        return const PlaygroundHomeScreen();
      },
    ),
    GoRoute(
      name: '/playground/tab',
      path: '/playground/tab',
      builder: (BuildContext context, GoRouterState state) {
        return const PlaygroundTab();
      },
    )
  ],
);
