# ISwift Homework #1

## Task 1: FizzBuzz
 The FizzBuzz problem requires printing numbers from 1 to 100, but for multiples of three, the program should print "Fizz" instead of the number, and for multiples of five, it should print "Buzz". For numbers that are multiples of both three and five, the program should print "FizzBuzz".

```
void fizzBuzz(int input) {
  var isThreeDivisible = input % 3 == 0;
  var isFiveDivisible = input % 5 == 0;

  if (isThreeDivisible && isFiveDivisible) {
    print('FizzBuzz');
    return;
  }

  if (isThreeDivisible) {
    print('Fizz');
    return;
  }

  if (isFiveDivisible) {
    print('Buzz');
    return;
  }

  print(input);
}
```

The function first checks if the input is divisible by 3 and 5, and if so, it prints "FizzBuzz" and returns. If the input is not divisible by both 3 and 5, the function checks if it is divisible by 3, and if so, it prints "Fizz" and returns. If the input is not divisible by 3, the function checks if it is divisible by 5, and if so, it prints "Buzz" and returns. If the input is not divisible by either 3 or 5, the function simply prints the input.

## Task 2: Deduplication
The deduplication problem requires removing duplicates from an array of integers without sorting the array. The function  takes an array of integers as input and returns a new array with duplicates removed. The function creates an empty array called uniqueArr to store the unique integers. It then iterates through the input array using a for loop and checks if the current integer is already present in the uniqueArr using the contains method. If the integer is not present, it is added to the uniqueArr using the add method. Finally, the function returns the uniqueArr array with duplicates removed.

```
List<int> dedupe(List<int> arr) {
  List<int> uniqueArr = [];

  for (int i = 0; i < arr.length; i++) {
    if (!uniqueArr.contains(arr[i])) uniqueArr.add(arr[i]);
  }

  return uniqueArr;
}
```

# Task 3: Valid Bracket
The takes a string input and returns a boolean value indicating whether the input string contains a valid pair of brackets or not.

```
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
```

The function first finds the index of the first pair of brackets in the input string using the `indexOf` method. If the index is less than zero, it means that there are no brackets in the input string, so the function returns false. Otherwise, the function removes the first pair of brackets from the input string and creates a new string called `newInput` by concatenating the left and right substrings.

The function then checks if the `newInput` string is empty. If it is, it means that all the brackets in the input string are valid pairs, so the function returns true. Otherwise, the function calls itself recursively with the `newInput` string as the input parameter.

The function keeps removing the first pair of brackets from the input string until there are no more brackets left or until an invalid pair of brackets is found. If an invalid pair of brackets is found, the function returns false. If all the brackets in the input string are valid pairs, the function returns true.

## Task 4: Breaking Records
This function takes a list of integers called scores as input and returns a list of two integers. The function calculates the number of times the highest score and the lowest score are broken in the list of scores.

```
List<int> breakingRecords(List<int> scores) {
  int highestScore = scores[0];
  int lowestScore = scores[0];
  int highestScoreCount = 0;
  int lowestScoreCount = 0;

  for (int i = 1; i < scores.length; i++) {
    if (scores[i] > highestScore) {
      highestScore = scores[i];
      highestScoreCount++;
    } else if (scores[i] < lowestScore) {
      lowestScore = scores[i];
      lowestScoreCount++;
    }
  }

  return [highestScoreCount, lowestScoreCount];
}
```

The function first initializes four variables: `highestScore` and `lowestScore` to the first element of the scores list, and `highestScoreCount` and `lowestScoreCount` to 0.

The function then uses a for loop to iterate through the scores list starting from the second element. In each iteration, the function checks if the current score is greater than the `highestScore`. If it is, the function updates the `highestScore` to the current score and increments the `highestScoreCount` by 1. If the current score is less than the `lowestScore`, the function updates the `lowestScore` to the current score and increments the `lowestScoreCount` by 1.

Finally, the function returns a list of two integers: `highestScoreCount` and `lowestScoreCount`, which represent the number of times the highest score and the lowest score were broken in the scores list, respectively.

## Task 5: Last Digit of Fibonacci
We two functions: `fibonacci` and `lastItemOf` as following

```
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
```

The `fibonacci` function takes an integer n as input and returns a list of the first `n` numbers in the Fibonacci sequence. The function first initializes a list result with the first two numbers in the sequence, which are both 1. Then, the function uses a for loop to iterate from the third number in the sequence up to the nth number. In each iteration, the function calculates the next number in the sequence by adding the previous two numbers together and appends it to the result list. Finally, the function returns the result list.

The `lastItemOf` function takes a list of integers arr as input and returns the last element of the list. The function uses the [] operator to access the last element of the list, which is located at `index arr.length - 1`. The function returns this last element.