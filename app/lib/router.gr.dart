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
    CalculatorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CalculatorScreen(),
      );
    },
    CounterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CounterScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    InputValidationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InputValidationScreen(),
      );
    },
    NewsExploreRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsExploreScreen(),
      );
    },
    NewsHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsHomeScreen(),
      );
    },
    NewsSearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsSearchScreen(),
      );
    },
    NewsSummaryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsSummaryScreen(),
      );
    },
    NewsWebviewRoute.name: (routeData) {
      final args = routeData.argsAs<NewsWebviewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsWebviewScreen(url: args.url),
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
/// [CalculatorScreen]
class CalculatorRoute extends PageRouteInfo<void> {
  const CalculatorRoute({List<PageRouteInfo>? children})
      : super(
          CalculatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalculatorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CounterScreen]
class CounterRoute extends PageRouteInfo<void> {
  const CounterRoute({List<PageRouteInfo>? children})
      : super(
          CounterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CounterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [InputValidationScreen]
class InputValidationRoute extends PageRouteInfo<void> {
  const InputValidationRoute({List<PageRouteInfo>? children})
      : super(
          InputValidationRoute.name,
          initialChildren: children,
        );

  static const String name = 'InputValidationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsExploreScreen]
class NewsExploreRoute extends PageRouteInfo<void> {
  const NewsExploreRoute({List<PageRouteInfo>? children})
      : super(
          NewsExploreRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsExploreRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsHomeScreen]
class NewsHomeRoute extends PageRouteInfo<void> {
  const NewsHomeRoute({List<PageRouteInfo>? children})
      : super(
          NewsHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsSearchScreen]
class NewsSearchRoute extends PageRouteInfo<void> {
  const NewsSearchRoute({List<PageRouteInfo>? children})
      : super(
          NewsSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsSearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsSummaryScreen]
class NewsSummaryRoute extends PageRouteInfo<void> {
  const NewsSummaryRoute({List<PageRouteInfo>? children})
      : super(
          NewsSummaryRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsSummaryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsWebviewScreen]
class NewsWebviewRoute extends PageRouteInfo<NewsWebviewRouteArgs> {
  NewsWebviewRoute({
    required String url,
    List<PageRouteInfo>? children,
  }) : super(
          NewsWebviewRoute.name,
          args: NewsWebviewRouteArgs(url: url),
          initialChildren: children,
        );

  static const String name = 'NewsWebviewRoute';

  static const PageInfo<NewsWebviewRouteArgs> page =
      PageInfo<NewsWebviewRouteArgs>(name);
}

class NewsWebviewRouteArgs {
  const NewsWebviewRouteArgs({required this.url});

  final String url;

  @override
  String toString() {
    return 'NewsWebviewRouteArgs{url: $url}';
  }
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
