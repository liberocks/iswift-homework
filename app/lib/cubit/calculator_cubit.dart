import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/presentation/playground/calculator/cubit/calculator_state.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(CalculatorState());

  void reset() => emit(CalculatorState());

  void setOperation(String operator) {
    emit(
      state.copyWith(operator: operator),
    );
  }

  void setLeftOperand(double leftOperand) {
    emit(
      state.copyWith(leftOperand: leftOperand),
    );
  }

  void setRightOperand(double leftOperand) {
    emit(
      state.copyWith(leftOperand: leftOperand),
    );
  }

  void calculate() {
    switch (state.operator) {
      case '+':
        emit(
          state.copyWith(
            result: state.leftOperand + state.rightOperand,
          ),
        );
        break;
      case '-':
        emit(
          state.copyWith(
            result: state.leftOperand - state.rightOperand,
          ),
        );
        break;
      case '*':
        emit(
          state.copyWith(
            result: state.leftOperand * state.rightOperand,
          ),
        );
        break;
      case '/':
        emit(
          state.copyWith(
            result: state.leftOperand / state.rightOperand,
          ),
        );
        break;
      default:
        emit(
          state.copyWith(
            result: 0,
          ),
        );
    }
  }
}
