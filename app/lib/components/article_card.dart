import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String author;
  final String date;
  final VoidCallback onPressed;

  const ArticleCard({
    required this.imageAsset,
    required this.title,
    required this.author,
    required this.date,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed,
        child: Container(
          width: double.infinity,
          child: Row(
            children: [
              Image.asset(
                imageAsset,
                width: 85,
                height: 85,
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          author,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[500],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                          child: Icon(
                            Icons.circle,
                            size: 5,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          date,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[500],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                      alignment: Alignment.bottomCenter,
                      height: 85,
                      child: Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.blue[700],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
