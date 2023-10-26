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
        padding: EdgeInsets.all(16), 
        side: BorderSide(
          color: const Color(0xD9D9D9FF), 
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
            width: 50, 
            height: 50, 
          ),
          SizedBox(width: 8), 
          Text(
            label.toUpperCase(),
            style: TextStyle(
              fontFamily: 'SignikaNegative',
              fontWeight: FontWeight.bold, fontSize: 16,
              color: Colors.black, 
            ),
          ),
        ],
      ),
    );
  }
}
