import 'package:flutter/material.dart';

class OutlinedButtonWithImageAndLabel extends StatelessWidget {
  final String imageAsset;
  final String label;
  final VoidCallback onPressed;

  OutlinedButtonWithImageAndLabel({
    required this.imageAsset,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(16), // Set padding on all sides
        side: BorderSide(
          color: const Color(0xD9D9D9FF), // Set the border color
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            imageAsset,
            width: 50, // Set the image width
            height: 50, // Set the image height
          ),
          SizedBox(width: 8), // Add space between icon and label
          Text(
            label.toUpperCase(),
            style: TextStyle(
              fontFamily: 'SignikaNegative',
              fontWeight: FontWeight.bold, fontSize: 16,
              color: Colors.black, // Set the label text color
            ),
          ),
        ],
      ),
    );
  }
}
