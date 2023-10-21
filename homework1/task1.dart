/// Prints 'Fizz' if the input is divisible by 3, 'Buzz' if the input is divisible by 5,
/// 'FizzBuzz' if the input is divisible by both 3 and 5, and the input itself otherwise.
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

void main() {
  // Test case 1
  print('Test case 1:');
  fizzBuzz(3); // Expected output: Fizz

  // Test case 2
  print('Test case 2:');
  fizzBuzz(5); // Expected output: Buzz

  // Test case 3
  print('Test case 3:');
  fizzBuzz(15); // Expected output: FizzBuzz

  // Test case 4
  print('Test case 4:');
  fizzBuzz(7); // Expected output: 7
}
