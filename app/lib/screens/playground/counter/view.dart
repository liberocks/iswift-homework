import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:playground/screens/playground/counter/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        centerTitle: false,
        title: const Text(
          'Simple Counter',
          style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black87,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left_sharp,
            size: 32,
          ),
          onPressed: () => AutoRouter.of(context).pop(),
        ),
      ),
      body: Center(
        child: BlocBuilder<CalculatorCubit, int>(
          builder: (context, state) {
            return Text(
              '$state',
              style: textTheme.displayMedium,
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'addButton',
            child: const Icon(Icons.add),
            onPressed: () => context.read<CalculatorCubit>().increment(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: 'subtractButton',
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CalculatorCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}
