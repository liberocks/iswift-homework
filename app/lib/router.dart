import 'package:auto_route/auto_route.dart';

import 'package:playground/presentation/main_page.dart';
import 'package:playground/presentation/playground_counter_page.dart';
import 'package:playground/presentation/playground_calculator_page.dart';
import 'package:playground/presentation/playground_input_validation_page.dart';
import 'package:playground/presentation/playground_selection_page.dart';
import 'package:playground/presentation/playground_home_page.dart';
import 'package:playground/presentation/playground_tab_page.dart';
import 'package:playground/presentation/news_summary_page.dart';
import 'package:playground/presentation/news_search_page.dart';
import 'package:playground/presentation/news_home_page.dart';
import 'package:playground/presentation/news_explore_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/playground',
          page: PlaygroundSelectionRoute.page,
        ),
        AutoRoute(
          path: '/playground/home',
          page: PlaygroundHomeRoute.page,
        ),
        AutoRoute(
          path: '/playground/tab',
          page: PlaygroundTabRoute.page,
        ),
        AutoRoute(
          path: '/playground/counter',
          page: CounterRoute.page,
        ),
        AutoRoute(
          path: '/playground/calculator',
          page: CalculatorRoute.page,
        ),
        AutoRoute(
          path: '/playground/input-validation',
          page: InputValidationRoute.page,
        ),
        AutoRoute(
          path: '/news/home',
          page: NewsHomeRoute.page,
        ),
        AutoRoute(
          path: '/news/explore',
          page: NewsExploreRoute.page,
        ),
        AutoRoute(
          path: '/news/search',
          page: NewsSearchRoute.page,
        ),
        AutoRoute(
          path: '/news/summary',
          page: NewsSummaryRoute.page,
        ),
      ];
}
