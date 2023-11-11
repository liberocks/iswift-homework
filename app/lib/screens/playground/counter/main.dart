import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/screens/playground/counter/cubit/counter_cubit.dart';
import 'package:playground/screens/playground/counter/view.dart';

@RoutePage()
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalculatorCubit(),
      child: const CounterView(),
    );
  }
}
