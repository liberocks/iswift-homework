import 'package:dio/dio.dart';

import 'package:playground/commons/api_path_constant.dart';
import 'package:playground/commons/top_stories_section.dart';
import 'package:playground/data/services/client.dart';

class NewsProvider {
  ApiClient _client;

  NewsProvider(this._client);

  Future<dynamic> getTopStories(TopStoriesSection section) async {
    try {
      final response = await _client.dio.get(
        NewsPath.topStories.value.replaceAll(
          '{SECTION}',
          section.value,
        ),
      );

      return response.data;
    } on DioException catch (e) {
      throw e;
    }
  }

  Future<dynamic> getMostPopularStories() async {
    try {
      final response = await _client.dio.get(NewsPath.mostPopular.value);

      return response.data;
    } on DioException catch (e) {
      throw e;
    }
  }

  Future<dynamic> searchArticles(String query) async {
    try {
      final response =
          await _client.dio.get(NewsPath.articleSearch.value, queryParameters: {
        'q': query,
      });

      return response.data;
    } on DioException catch (e) {
      throw e;
    }
  }
}
