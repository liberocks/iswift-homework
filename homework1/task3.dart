/// Checks if the given input string has valid pairs of brackets or not.
/// Returns true if the input string has valid pairs of brackets, false otherwise.
bool isBracketValidOrNot(String input) {
  // find the first pair of brackets
  int firstPairIndex = input.indexOf('()');

  if (firstPairIndex < 0) {
    return false;
  } else {
    // remove the first pair of brackets
    String left = input.substring(0, firstPairIndex);
    String right = input.substring(firstPairIndex + 2);
    String newInput = left + right;

    // check if the new input is empty
    if (newInput.isEmpty) {
      return true;
    } else {
      return isBracketValidOrNot(newInput);
    }
  }
}

void main() {
// Test case 1
  String case1 = "(())";
  bool expected1 = true;
  print('Test case 1: ${isBracketValidOrNot(case1) == expected1}');

  // Test case 2
  String case2 = "()()";
  bool expected2 = true;
  print('Test case 2: ${isBracketValidOrNot(case2) == expected2}');

  // Test case 3
  String case3 = "()()(";
  bool expected3 = false;
  print('Test case 3: ${isBracketValidOrNot(case3) == expected3}');

  // Test case 4
  String case4 = "(";
  bool expected4 = false;
  print('Test case 4: ${isBracketValidOrNot(case4) == expected4}');
}
