enum NewsPath {
  articleSearch,
  mostPopular,
  topStories,
}

extension ApiPathConstantExtension on NewsPath {
  String get value {
    switch (this) {
      case NewsPath.articleSearch:
        return '/search/v2/articlesearch.json';
      case NewsPath.mostPopular:
        return '/mostpopular/v2/viewed/1.json';
      case NewsPath.topStories:
        return '/topstories/v2/{SECTION}.json';
    }
  }
}
