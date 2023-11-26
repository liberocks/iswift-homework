import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

@RoutePage()
class NewsWebviewScreen extends StatelessWidget {
  const NewsWebviewScreen({required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          centerTitle: false,
          title: const Text(
            'Article',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left_sharp,
              size: 32,
            ),
            onPressed: () => AutoRouter.of(context).pop(),
          ),
        ),
        body: SafeArea(
          child: InAppWebView(
            initialUrlRequest: URLRequest(url: Uri.parse(url)),
          ),
        ),
      ),
    );
  }
}
