import 'package:bloc/bloc.dart';

class CalculatorCubit extends Cubit<int> {
  CalculatorCubit() : super(0);

  /// add 1 to the current state
  void increment() => emit(state + 1);

  /// subtract 1 from the current state
  void decrement() => emit(state - 1);
}
