import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  const ImageCard({required this.imageAsset, required this.title});

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
                    width: 85,
                    height: 50,
                    fit: BoxFit.cover,
                  )),
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
