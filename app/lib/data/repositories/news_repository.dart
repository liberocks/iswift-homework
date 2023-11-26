import 'package:intl/intl.dart';

import 'package:playground/commons/top_stories_section.dart';
import 'package:playground/data/models/article_model.dart';
import 'package:playground/data/services/providers/news_providers.dart';

final df = DateFormat('dd-MM-yyyy');

class NewsRepository {
  final NewsProvider provider;

  NewsRepository(this.provider);

  Future<List<ArticleModel>> getTopStories(TopStoriesSection section) async {
    final response = await provider.getTopStories(section);

    List<ArticleModel> articles = [];

    for (var result in response['results']) {
      List<String> multimedia = [];

      for (var media in result['multimedia']) {
        multimedia.add(media['url']);
      }

      String author = result['byline'];
      bool is_multiple_authors = false;
      if (author.startsWith('By ')) {
        author = author.substring(3);
      }
      if (author.contains('-')) {
        author = '${author.substring(0, author.indexOf('-'))}';
        is_multiple_authors = true;
      }
      if (author.contains(',')) {
        author = '${author.substring(0, author.indexOf(','))}';
        is_multiple_authors = true;
      }

      if (is_multiple_authors) {
        author = '$author et al';
      }

      articles.add(
        ArticleModel(
          id: result['uri'],
          url: result['url'],
          title: result['title'],
          description: result['abstract'],
          author: author,
          multimedia: multimedia,
          date: df.format(DateTime.parse(result['published_date'])),
        ),
      );
    }

    return articles;
  }

  Future<List<ArticleModel>> getMostPopularStories() async {
    final response = await provider.getMostPopularStories();

    List<ArticleModel> articles = [];

    for (var result in response['results']) {
      List<String> multimedia = [];

      for (var media in result['media']) {
        for (var meta in media['media-metadata']) {
          multimedia.add(meta['url']);
        }
      }

      String author = result['byline'];
      bool is_multiple_authors = false;
      if (author.startsWith('By ')) {
        author = author.substring(3);
      }
      if (author.contains('-')) {
        author = '${author.substring(0, author.indexOf('-'))}';
        is_multiple_authors = true;
      }
      if (author.contains(',')) {
        author = '${author.substring(0, author.indexOf(','))}';
        is_multiple_authors = true;
      }

      if (is_multiple_authors) {
        author = '$author et al';
      }

      articles.add(
        ArticleModel(
          id: result['uri'],
          url: result['url'],
          title: result['title'],
          description: result['abstract'],
          author: author,
          multimedia: multimedia,
          date: df.format(DateTime.parse(result['published_date'])),
        ),
      );
    }

    return articles;
  }

  Future<(List<ArticleModel>, int)> searchArticles(String query) async {
    List<ArticleModel> articles = [];
    int hits = 0;

    final response = await provider.searchArticles(query);

    for (var result in response['response']['docs']) {
      List<String> multimedia = [];

      for (var media in result['multimedia']) {
        multimedia.add('https://static01.nyt.com/${media['url']}');
      }

      String author = result['byline']['original'];
      bool is_multiple_authors = false;
      if (author.startsWith('By ')) {
        author = author.substring(3);
      }
      if (author.contains('-')) {
        author = '${author.substring(0, author.indexOf('-'))}';
        is_multiple_authors = true;
      }
      if (author.contains(',')) {
        author = '${author.substring(0, author.indexOf(','))}';
        is_multiple_authors = true;
      }

      if (is_multiple_authors) {
        author = '${author} et al';
      }

      articles.add(
        ArticleModel(
          id: result['uri'],
          url: result['web_url'],
          title: result['headline']['main'],
          description: result['abstract'],
          author: author,
          multimedia: multimedia,
          date: df.format(DateTime.parse(result['pub_date'])),
        ),
      );
    }

    hits = response['response']['meta']['hits'];

    return (articles, hits);
  }
}
