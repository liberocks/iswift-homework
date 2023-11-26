import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:playground/components/bottomsheet.dart';
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
              onPressed: () =>
                  AutoRouter.of(context).pushNamed('/playground/home'),
            ),
            Divider(),
            TouchableSection(
              label: 'Simple Counter',
              description:
                  'Creating counter app that consists add and subtract function',
              onPressed: () =>
                  AutoRouter.of(context).pushNamed('/playground/counter'),
            ),
            Divider(),
            TouchableSection(
              label: 'Simple Calculator',
              description:
                  'Creating calculator app that consists add, divide, subtract, and multiply function',
              onPressed: () =>
                  AutoRouter.of(context).pushNamed('/playground/calculator'),
            ),
            Divider(),
            TouchableSection(
              label: 'Input Validation',
              description:
                  'Play around with email input and password input validation',
              onPressed: () => AutoRouter.of(context)
                  .pushNamed('/playground/input-validation'),
            ),
            Divider(),
            TouchableSection(
              label: 'Switch App',
              description:
                  'Goes to main home page and choose between playground or Pixels',
              onPressed: () => showModalBottomSheet(
                context: context,
                builder: (context) => BottomSheetModalComponent(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
