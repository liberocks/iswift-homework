import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/commons/top_stories_section.dart';

import 'package:playground/cubit/top_stories_state.dart';
import 'package:playground/data/repositories/news_repository.dart';

class TopStoriesCubit extends Cubit<TopStoriesState> {
  final NewsRepository newsRepository;

  TopStoriesCubit({required this.newsRepository}) : super(TopStoriesState());

  Future getTopStories(
      [TopStoriesSection section = TopStoriesSection.home]) async {
    final data = await newsRepository.getTopStories(section);

    emit(state.copyWith(data: data));
  }
}
