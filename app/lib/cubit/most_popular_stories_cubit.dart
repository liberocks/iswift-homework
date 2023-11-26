import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/commons/top_stories_section.dart';

import 'package:playground/cubit/most_popular_stories_state.dart';
import 'package:playground/data/repositories/news_repository.dart';

class MostPopularStoriesCubit extends Cubit<MostPopularStoriesState> {
  final NewsRepository newsRepository;

  MostPopularStoriesCubit({required this.newsRepository})
      : super(MostPopularStoriesState());

  Future getMostPopularStories() async {
    final data = await newsRepository.getMostPopularStories();

    emit(state.copyWith(data: data));
  }
}
