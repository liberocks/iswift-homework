import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:playground/screens/bottomsheet/main.dart';
import 'package:playground/components/outlined_button_with_image.dart';
import 'package:playground/components/touchable_section.dart';

@RoutePage()
class PlaygroundSelectionScreen extends StatelessWidget {
  const PlaygroundSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(margin: EdgeInsets.only(top: 60)),
            Text(
              'Choose Sections',
              style: TextStyle(
                color: Colors.black,
                fontSize: 19,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(margin: EdgeInsets.only(top: 20)),
            TouchableSection(
              label: 'Dummy UI',
              description:
                  'Practice flutter UI and get familiar with UI Widgets',
              onPressed: () => context.router.pushNamed('/playground/home'),
            ),
            Divider(),
            TouchableSection(
              label: 'Switch App',
              description:
                  'Goes to main home page and choose between playground or Pixels',
              onPressed: () => showModalBottomSheet(
                context: context,
                builder: (context) => BottomSheetModal(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
