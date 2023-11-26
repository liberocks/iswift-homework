import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:playground/components/dummy_article_card.dart';
import 'package:playground/components/image_card.dart';

@RoutePage()
class PlaygroundTabScreen extends StatelessWidget {
  const PlaygroundTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          centerTitle: false,
          title: const Text(
            'Dummy UI',
            style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.chevron_left_sharp,
              size: 32,
            ),
            onPressed: () => AutoRouter.of(context).pop(),
          ),
          bottom: TabBar(
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
            labelColor: Colors.blue[700],
            unselectedLabelColor: const Color.fromARGB(255, 47, 37, 37),
            tabs: [
              const Tab(text: 'ListView'),
              const Tab(text: 'GridView'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    ArticleCard(
                      imageAsset: 'assets/images/placeholder.png',
                      title: 'How can I be a Flutter Developler Expert?',
                      author: 'Jill Lepore',
                      date: '23 May 23',
                      onPressed: () {},
                    ),
                    ArticleCard(
                      imageAsset: 'assets/images/placeholder.png',
                      title: 'How can I be a Flutter Developler Expert?',
                      author: 'Jill Lepore',
                      date: '23 May 23',
                      onPressed: () {},
                    ),
                    ArticleCard(
                      imageAsset: 'assets/images/placeholder.png',
                      title: 'How can I be a Flutter Developler Expert?',
                      author: 'Jill Lepore',
                      date: '23 May 23',
                      onPressed: () {},
                    ),
                    ArticleCard(
                      imageAsset: 'assets/images/placeholder.png',
                      title: 'How can I be a Flutter Developler Expert?',
                      author: 'Jill Lepore',
                      date: '23 May 23',
                      onPressed: () {},
                    ),
                    ArticleCard(
                      imageAsset: 'assets/images/placeholder.png',
                      title: 'How can I be a Flutter Developler Expert?',
                      author: 'Jill Lepore',
                      date: '23 May 23',
                      onPressed: () {},
                    ),
                    ArticleCard(
                      imageAsset: 'assets/images/placeholder.png',
                      title: 'How can I be a Flutter Developler Expert?',
                      author: 'Jill Lepore',
                      date: '23 May 23',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
            GridView.count(
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: 50,
              ),
              crossAxisCount: 2,
              children: [
                const ImageCard(
                  imageWidth: 125,
                  imageHeight: 100,
                  imageAsset: 'assets/images/placeholder.png',
                  title: '1st Image',
                ),
                const ImageCard(
                  imageWidth: 125,
                  imageHeight: 100,
                  imageAsset: 'assets/images/placeholder.png',
                  title: '1st Image',
                ),
                const ImageCard(
                  imageWidth: 125,
                  imageHeight: 100,
                  imageAsset: 'assets/images/placeholder.png',
                  title: '1st Image',
                ),
                const ImageCard(
                  imageWidth: 125,
                  imageHeight: 100,
                  imageAsset: 'assets/images/placeholder.png',
                  title: '1st Image',
                ),
                const ImageCard(
                  imageWidth: 125,
                  imageHeight: 100,
                  imageAsset: 'assets/images/placeholder.png',
                  title: '1st Image',
                ),
                const ImageCard(
                  imageWidth: 125,
                  imageHeight: 100,
                  imageAsset: 'assets/images/placeholder.png',
                  title: '1st Image',
                ),
                const ImageCard(
                  imageWidth: 125,
                  imageHeight: 100,
                  imageAsset: 'assets/images/placeholder.png',
                  title: '1st Image',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
