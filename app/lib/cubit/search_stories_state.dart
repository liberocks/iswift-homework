import 'package:playground/data/models/article_model.dart';

class SearchArticlesState {
  final bool isLoading;
  final String error;
  final List<ArticleModel> data;
  final int hits;

  SearchArticlesState({
    this.isLoading = false,
    this.error = '',
    this.data = const [],
    this.hits = 0,
  });

  SearchArticlesState copyWith({
    bool? isLoading,
    String? error,
    List<ArticleModel>? data,
    int? hits,
  }) {
    return SearchArticlesState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      data: data ?? this.data,
      hits: hits ?? this.hits,
    );
  }
}
