class CalculatorState {
  final double leftOperand;
  final double rightOperand;
  final String operator;
  final double result;
  final List<(double, double, String)> history;

  CalculatorState(
      {this.leftOperand = 0,
      this.rightOperand = 0,
      this.operator = '',
      this.result = 0,
      this.history = const []});

  CalculatorState copyWith({
    double? leftOperand,
    double? rightOperand,
    String? operator,
    double? result,
  }) {
    return CalculatorState(
      leftOperand: leftOperand ?? this.leftOperand,
      rightOperand: rightOperand ?? this.rightOperand,
      operator: operator ?? this.operator,
      result: result ?? this.result,
    );
  }
}
