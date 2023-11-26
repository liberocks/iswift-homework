import 'package:playground/data/models/article_model.dart';

class TopStoriesState {
  final bool isLoading;
  final String error;
  final List<ArticleModel> data;

  TopStoriesState({
    this.isLoading = false,
    this.error = '',
    this.data = const [],
  });

  TopStoriesState copyWith({
    bool? isLoading,
    String? error,
    List<ArticleModel>? data,
  }) {
    return TopStoriesState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      data: data ?? this.data,
    );
  }
}
