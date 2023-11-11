// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    PlaygroundHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PlaygroundHomeScreen(),
      );
    },
    PlaygroundSelectionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PlaygroundSelectionScreen(),
      );
    },
    PlaygroundTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PlaygroundTabScreen(),
      );
    },
  };
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PlaygroundHomeScreen]
class PlaygroundHomeRoute extends PageRouteInfo<void> {
  const PlaygroundHomeRoute({List<PageRouteInfo>? children})
      : super(
          PlaygroundHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlaygroundHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PlaygroundSelectionScreen]
class PlaygroundSelectionRoute extends PageRouteInfo<void> {
  const PlaygroundSelectionRoute({List<PageRouteInfo>? children})
      : super(
          PlaygroundSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlaygroundSelectionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PlaygroundTabScreen]
class PlaygroundTabRoute extends PageRouteInfo<void> {
  const PlaygroundTabRoute({List<PageRouteInfo>? children})
      : super(
          PlaygroundTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlaygroundTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
