import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../screens/bottomsheet/main.dart';
import '../../../components/outlined_button_with_image.dart';
import '../../../components/touchable_section.dart';

class PlaygroundHomeScreen extends StatelessWidget {
  const PlaygroundHomeScreen({super.key});

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
              'Choose Section',
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
              onPressed: () => context.go('/'),
            ),
            Divider(),
            TouchableSection(
              label: 'Switch App',
              description:
                  'Goes to main home page and choose between playground or Pixels',
              // TODO: Add onPressed action that show a bottomsheet modal
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
