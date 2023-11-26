import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:playground/cubit/most_popular_stories_cubit.dart';
import 'package:playground/cubit/search_stories_cubit.dart';
import 'package:playground/cubit/top_stories_cubit.dart';
import 'package:playground/data/repositories/news_repository.dart';
import 'package:playground/router.dart';

class MyApp extends StatelessWidget {
  final NewsRepository newsRepository;

  MyApp({super.key, required this.newsRepository});

  /// create an instance of `Router`
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TopStoriesCubit>(
          create: (BuildContext context) => TopStoriesCubit(
            newsRepository: newsRepository,
          ),
        ),
        BlocProvider<MostPopularStoriesCubit>(
          create: (BuildContext context) => MostPopularStoriesCubit(
            newsRepository: newsRepository,
          ),
        ),
        BlocProvider<SearchArticlesCubit>(
          create: (BuildContext context) => SearchArticlesCubit(
            newsRepository: newsRepository,
          ),
        )
      ],
      child: MaterialApp.router(
        routerConfig: _router.config(),
      ),
    );
  }
}
