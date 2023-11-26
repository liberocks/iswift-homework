import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/commons/top_stories_section.dart';

import 'package:playground/cubit/search_stories_state.dart';
import 'package:playground/data/repositories/news_repository.dart';

class SearchArticlesCubit extends Cubit<SearchArticlesState> {
  final NewsRepository newsRepository;

  SearchArticlesCubit({required this.newsRepository})
      : super(SearchArticlesState());

  Future searchArticles(String query) async {
    final (data, hits) = await newsRepository.searchArticles(query);

    emit(state.copyWith(data: data, hits: hits));
  }
}
