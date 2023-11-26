enum TopStoriesSection {
  arts,
  automobiles,
  books,
  business,
  fashion,
  food,
  health,
  home,
  insider,
  magazine,
  movies,
  nyregion,
  obituaries,
  opinion,
  politics,
  realestate,
  science,
  sports,
  sundayreview,
  technology,
  theater,
  tmagazine,
  travel,
  upshot,
  us,
  world,
}

extension TopStoriesSectionExtension on TopStoriesSection {
  String get value {
    switch (this) {
      case TopStoriesSection.arts:
        return 'arts';
      case TopStoriesSection.automobiles:
        return 'automobiles';
      case TopStoriesSection.books:
        return 'books%2Freview';
      case TopStoriesSection.business:
        return 'business';
      case TopStoriesSection.fashion:
        return 'fashion';
      case TopStoriesSection.food:
        return 'food';
      case TopStoriesSection.health:
        return 'health';
      case TopStoriesSection.home:
        return 'home';
      case TopStoriesSection.insider:
        return 'insider';
      case TopStoriesSection.magazine:
        return 'magazine';
      case TopStoriesSection.tmagazine:
        return 't-magazine';
      case TopStoriesSection.movies:
        return 'movies';
      case TopStoriesSection.nyregion:
        return 'nyregion';
      case TopStoriesSection.obituaries:
        return 'obituaries';
      case TopStoriesSection.opinion:
        return 'opinion';
      case TopStoriesSection.politics:
        return 'politics';
      case TopStoriesSection.realestate:
        return 'realestate';
      case TopStoriesSection.science:
        return 'science';
      case TopStoriesSection.sports:
        return 'sports';
      case TopStoriesSection.sundayreview:
        return 'sundayreview';
      case TopStoriesSection.technology:
        return 'technology';
      case TopStoriesSection.theater:
        return 'theater';
      case TopStoriesSection.travel:
        return 'travel';
      case TopStoriesSection.upshot:
        return 'upshot';
      case TopStoriesSection.us:
        return 'us';
      case TopStoriesSection.world:
        return 'world';
      default:
        return 'home';
    }
  }
}
