import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/components/article_card.dart';
import 'package:playground/cubit/most_popular_stories_cubit.dart';
import 'package:playground/cubit/most_popular_stories_state.dart';
import 'package:playground/cubit/search_stories_cubit.dart';
import 'package:playground/cubit/search_stories_state.dart';
import 'package:playground/cubit/top_stories_cubit.dart';
import 'package:playground/cubit/top_stories_state.dart';

@RoutePage()
class NewsHomeScreen extends StatelessWidget {
  const NewsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () => {
                    BlocProvider.of<TopStoriesCubit>(context).getTopStories(),
                  },
                  child: Text('Get Top Stories'),
                ),
                ElevatedButton(
                  onPressed: () => {
                    BlocProvider.of<MostPopularStoriesCubit>(context)
                        .getMostPopularStories(),
                  },
                  child: Text('Get Most Popular Stories'),
                ),
                ElevatedButton(
                  onPressed: () => {
                    BlocProvider.of<SearchArticlesCubit>(context)
                        .searchArticles('Taiwan'),
                  },
                  child: Text('Search Stories'),
                ),
                Text('Top Stories'),
                BlocBuilder<TopStoriesCubit, TopStoriesState>(
                  builder: (context, state) {
                    return Column(
                      children: state.data.map((article) {
                        return ArticleCard(
                          author: article.author,
                          title: article.title,
                          imageAsset: article.multimedia.length > 0
                              ? article
                                  .multimedia[article.multimedia.length - 1]
                              : '',
                          date: article.date,
                          onPressed: () {},
                        );
                      }).toList(),
                    );
                  },
                ),
                Text('Most Popular Stories'),
                BlocBuilder<MostPopularStoriesCubit, MostPopularStoriesState>(
                  builder: (context, state) {
                    return Column(
                      children: state.data.map((article) {
                        return ArticleCard(
                          author: article.author,
                          title: article.title,
                          imageAsset: article.multimedia.length > 0
                              ? article
                                  .multimedia[article.multimedia.length - 1]
                              : '',
                          date: article.date,
                          onPressed: () {},
                        );
                      }).toList(),
                    );
                  },
                ),
                Text('Search Article Stories'),
                BlocBuilder<SearchArticlesCubit, SearchArticlesState>(
                  builder: (context, state) {
                    return Column(
                      children: state.data.map((article) {
                        return ArticleCard(
                          author: article.author,
                          title: article.title,
                          imageAsset: article.multimedia.length > 0
                              ? article
                                  .multimedia[article.multimedia.length - 1]
                              : '',
                          date: article.date,
                          onPressed: () {},
                        );
                      }).toList(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
