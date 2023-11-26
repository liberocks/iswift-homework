import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:playground/app.dart';
import 'package:playground/data/repositories/news_repository.dart';
import 'package:playground/data/services/client.dart';
import 'package:playground/data/services/providers/news_providers.dart';

Future main() async {
  await dotenv.load(fileName: ".env");

  runApp(
    MyApp(
      newsRepository: NewsRepository(
        NewsProvider(
          ApiClient(),
        ),
      ),
    ),
  );
}
