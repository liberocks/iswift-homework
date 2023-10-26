import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../components/outlined_button_with_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(margin: EdgeInsets.only(top: 60)),
            Text(
              'Choose your app',
              style: TextStyle(
                color: Colors.black,
                fontSize: 19,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(margin: EdgeInsets.only(top: 20)),
            Row(
              children: [
                Expanded(
                  child: OutlinedButtonWithImageAndLabel(
                    imageAsset: 'assets/images/sandbox.png',
                    label: 'Playground',
                    onPressed: () => context.go('/playground'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
