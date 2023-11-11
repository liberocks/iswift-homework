import 'package:auto_route/auto_route.dart';

import 'package:playground/screens/home/main.dart';
import 'package:playground/screens/playground/main.dart';
import 'package:playground/screens/playground/home/main.dart';
import 'package:playground/screens/playground/tab/main.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: HomeRoute.page, initial: true),
        AutoRoute(path: '/playground', page: PlaygroundSelectionRoute.page),
        AutoRoute(path: '/playground/home', page: PlaygroundHomeRoute.page),
        AutoRoute(path: '/playground/tab', page: PlaygroundTabRoute.page),
      ];
}
