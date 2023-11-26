import 'package:playground/data/models/article_model.dart';

class MostPopularStoriesState {
  final bool isLoading;
  final String error;
  final List<ArticleModel> data;

  MostPopularStoriesState({
    this.isLoading = false,
    this.error = '',
    this.data = const [],
  });

  MostPopularStoriesState copyWith({
    bool? isLoading,
    String? error,
    List<ArticleModel>? data,
  }) {
    return MostPopularStoriesState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      data: data ?? this.data,
    );
  }
}
