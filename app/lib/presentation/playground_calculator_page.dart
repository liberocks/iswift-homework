import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:playground/cubit/counter_cubit.dart';

@RoutePage()
class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalculatorCubit(),
      child: const CalculatorView(),
    );
  }
}

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Calculate'),
        ),
      ),
      appBar: AppBar(
        elevation: 0.1,
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        centerTitle: false,
        title: const Text(
          'Simple Calculator',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left_sharp,
            size: 32,
          ),
          onPressed: () => AutoRouter.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Choose Type'.toUpperCase(),
                style: TextStyle(
                  color: Colors.green[700],
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Add'),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        Size(100, 40),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Subtract'),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        Size(100, 40),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Mulitply'),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        Size(100, 40),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Divide'),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        Size(100, 40),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'History'.toUpperCase(),
                style: TextStyle(
                  color: Colors.green[700],
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
