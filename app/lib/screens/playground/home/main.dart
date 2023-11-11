import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:playground/components/article_card.dart';
import 'package:playground/components/image_card.dart';

@RoutePage()
class PlaygroundHomeScreen extends StatelessWidget {
  const PlaygroundHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          icon: Icon(
            Icons.chevron_left_sharp,
            size: 32,
          ),
          onPressed: () => context.router.back(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OutlinedButton(
                    onPressed: () =>
                        context.router.pushNamed('/playground/tab'),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.all(0),
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Next',
                          style: TextStyle(
                              color: Colors.blue[700],
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Tab bar, Grid View, ListView',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'CONTAINER AND TEXT',
                      style: TextStyle(
                          color: Colors.teal[500],
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ArticleCard(
                    author: 'Jill Lepore',
                    date: '23 May 23',
                    imageAsset: 'assets/images/placeholder.png',
                    title: 'How can I be Flutter Developer Expert ?',
                    onPressed: () => {},
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'COLUMN',
                      style: TextStyle(
                          color: Colors.teal[500],
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Column(
                    children: [
                      ArticleCard(
                        author: 'Jill Lepore',
                        date: '23 May 23',
                        imageAsset: 'assets/images/placeholder.png',
                        title: 'How can I be Flutter Developer Expert ?',
                        onPressed: () => {},
                      ),
                      SizedBox(height: 10),
                      ArticleCard(
                        author: 'Jill Lepore',
                        date: '23 May 23',
                        imageAsset: 'assets/images/placeholder.png',
                        title: 'How can I be Flutter Developer Expert ?',
                        onPressed: () => {},
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Row'.toUpperCase(),
                      style: TextStyle(
                          color: Colors.teal[500],
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ImageCard(
                          imageAsset: 'assets/images/placeholder.png',
                          title: '1st Image',
                        ),
                        ImageCard(
                          imageAsset: 'assets/images/placeholder.png',
                          title: '2nd Image',
                        ),
                        ImageCard(
                          imageAsset: 'assets/images/placeholder.png',
                          title: '3rd Image',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Button'.toUpperCase(),
                      style: TextStyle(
                          color: Colors.teal[500],
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.blue[100],
                        padding: EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Press Me',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.blue[700],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Input'.toUpperCase(),
                      style: TextStyle(
                          color: Colors.teal[500],
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          '*',
                          style: TextStyle(
                            color: Colors.red[900],
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        )
                      ],
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10.0,
                          ),
                        ),
                      ),
                      hintText: 'Enter your email',
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Image asset, sized box & expanded'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.teal[500],
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ImageCard(
                          imageAsset: 'assets/images/placeholder.png',
                          title: '1st Image',
                        ),
                      ),
                      SizedBox(width: 10),
                      ImageCard(
                        imageAsset: 'assets/images/placeholder.png',
                        title: '2nd Image',
                      ),
                    ],
                  ),
                  SizedBox(height: 50)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
