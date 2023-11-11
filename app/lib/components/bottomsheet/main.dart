import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:playground/components/outlined_button_with_image.dart';

class BottomSheetModalComponent extends StatelessWidget {
  const BottomSheetModalComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(margin: EdgeInsets.only(top: 30)),
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
                      onPressed: () =>
                          {AutoRouter.of(context).pushNamed('/playground')}),
                ),
              ],
            ),
            Container(margin: EdgeInsets.only(top: 20)),
            Row(
              children: [
                Expanded(
                  child: OutlinedButtonWithImageAndLabel(
                    imageAsset: 'assets/images/reset.png',
                    label: 'Reset App',
                    onPressed: () => AutoRouter.of(context).pushNamed('/'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
