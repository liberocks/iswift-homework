import 'utils.dart';

/// Removes duplicates from a list of integers.
/// Returns a new list with only the unique integers from the input list.
List<int> dedupe(List<int> arr) {
  List<int> uniqueArr = [];

  for (int i = 0; i < arr.length; i++) {
    if (!uniqueArr.contains(arr[i])) uniqueArr.add(arr[i]);
  }

  return uniqueArr;
}

void main() {
  // Test case 1
  List<int> test1 = [1, 2, 3, 4, 4, 4, 4, 4, 5, 6, 6, 6, 6];
  List<int> expected1 = [1, 2, 3, 4, 5, 6];
  List<int> result1 = dedupe(test1);
  print('Test case 1: ${isEqual(result1, expected1)}');

  // Test case 2
  List<int> test2 = [1, 1, 1, 1, 1, 1, 1, 1, 1];
  List<int> expected2 = [1];
  List<int> result2 = dedupe(test2);
  print('Test case 2: ${isEqual(result2, expected2)}');

  // Test case 3
  List<int> test3 = [6, 6, 6, 4, 5, 5, 5, 4, 5, 6, 4, 5, 6, 4, 5, 6];
  List<int> expected3 = [6, 4, 5];
  List<int> result3 = dedupe(test3);
  print('Test case 3: ${isEqual(result3, expected3)}');
}
