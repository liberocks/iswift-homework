import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/playground/home/main.dart';
import 'screens/playground/main.dart';
import 'screens/home/main.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
            path: 'playground',
            builder: (BuildContext context, GoRouterState state) {
              return const PlaygroundSelectionScreen();
            },
            routes: <RouteBase>[
              GoRoute(
                  path: 'home',
                  builder: (BuildContext context, GoRouterState state) {
                    return const PlaygroundHomeScreen();
                  })
            ]),
      ],
    ),
  ],
);
