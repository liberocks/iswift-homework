import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final double imageWidth;
  final double imageHeight;
  const ImageCard(
      {required this.imageAsset,
      required this.title,
      this.imageWidth = 85,
      this.imageHeight = 50});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {},
        child: Container(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imageAsset,
                  width: imageWidth,
                  height: imageHeight,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
