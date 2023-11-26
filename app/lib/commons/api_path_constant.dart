const base_url = 'https://api.nytimes.com/svc';

enum ApiPathConstant {
  articleSearch,
  mostPopular,
  topStories,
}

extension ApiPathConstantExtension on ApiPathConstant {
  String get value {
    switch (this) {
      case ApiPathConstant.articleSearch:
        return '$base_url/search/v2/articlesearch.json';
      case ApiPathConstant.mostPopular:
        return '$base_url/mostpopular/v2/viewed/1.json';
      case ApiPathConstant.topStories:
        return '$base_url/topstories/v2/home.json';
    }
  }
}
