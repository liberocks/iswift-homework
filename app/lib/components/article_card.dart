import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  final String? imageAsset;
  final String title;
  final String author;
  final String date;
  final VoidCallback onPressed;

  const ArticleCard({
    this.imageAsset,
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
              this.imageAsset != null
                  ? Image.network(
                      this.imageAsset!,
                      width: 85,
                      height: 85,
                    )
                  : Image.asset(
                      'assets/images/placeholder.png',
                      width: 85,
                      height: 85,
                    ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize:
                            Theme.of(context).textTheme.titleSmall!.fontSize,
                        fontWeight:
                            Theme.of(context).textTheme.titleSmall!.fontWeight,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          author.length > 18
                              ? '${author.substring(0, 18)}...'
                              : author,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize:
                                Theme.of(context).textTheme.bodySmall!.fontSize,
                            fontWeight: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .fontWeight,
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
                            fontSize:
                                Theme.of(context).textTheme.bodySmall!.fontSize,
                            fontWeight: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .fontWeight,
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
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
