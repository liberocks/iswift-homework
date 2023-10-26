import 'package:flutter/material.dart';

class TouchableSection extends StatelessWidget {
  final String label;
  final String description;
  final VoidCallback onPressed;

  const TouchableSection({
    Key? key,
    required this.label,
    required this.description,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(16), 
        side: BorderSide(width: 0, color: Colors.transparent),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.blue[700], 
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.95,
                  child: Text(
                    description,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.grey[500], 
                    ),
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.black87, 
          ),
        ],
      ),
    );
  }
}
