/// Returns a list of the first n numbers in the Fibonacci sequence
List<int> fibonnaci(int n) {
  // the first two numbers in the sequence
  List<int> result = [1, 1];

  for (int i = 2; i < n; i++) {
    result.add(result[i - 1] + result[i - 2]);
  }

  return result;
}

/// Returns the last element of the given integer list [arr].
int lastItemOf(List<int> arr) => arr[arr.length - 1];

void main() {
// Test case 1
  int case1 = 3;
  int expected1 = 2;
  print('Test case 1: ${lastItemOf(fibonnaci(case1)) == expected1}');

  // Test case 2
  int case2 = 4;
  int expected2 = 3;
  print('Test case 2: ${lastItemOf(fibonnaci(case2)) == expected2}');

  // Test case 3
  int case3 = 10;
  int expected3 = 55;
  print('Test case 3: ${lastItemOf(fibonnaci(case3)) == expected3}');
}
