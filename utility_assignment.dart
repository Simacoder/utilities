// utility-assignment.dart
import 'dart:io';

// Task 1: Function to return the sum of two numbers
int sum(int a, int b) {
  return a + b;
}

// Task 2: Program to print numbers from 1 to 10 using a for loop
void printNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Task 3: Program to use switch statement to check string values
void checkString(String value) {
  switch (value) {
    case 'hello':
      print('Hello there!');
      break;
    case 'dart':
      print('Dart is awesome!');
      break;
    default:
      print('Unknown value');
  }
}

// Task 4: Program to print numbers from 20 to 10 using a while loop
void printNumbersReverse() {
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

// Task 5: Program to check if a number is even or odd
void checkEvenOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
}

// Task 6: Program to find the largest number in a list
int findLargest(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('List is empty');
  }

  int largest = numbers[0];
  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }
  return largest;
}

// Task 7: Program to use try-catch block to catch an exception
void catchError() {
  try {
    // This line will throw an exception since the string cannot be parsed as an integer
    int.parse('abc');
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  // Task 1: Sum of two numbers
  //read number from user
    print('Enter x');
    var x = int.parse(stdin.readLineSync()!);
    print('Enter y');
    var y = int.parse(stdin.readLineSync()!);

    //var output = x + y;
  print('Task 1: Sum of x and y is ${sum(x, y)}');

  // Task 2: Print numbers from 1 to 10
  print('\nTask 2:');
  printNumbers();

  // Task 3: Check string values
  print('\nTask 3:');
  checkString('hello');
  checkString('dart');
  checkString('python');

  // Task 4: Print numbers from 20 to 10
  print('\nTask 4:');
  printNumbersReverse();

  // Task 5: Check if a number is even or odd
  print('\nTask 5:');
  checkEvenOdd(12);
  checkEvenOdd(7);

  // Task 6: Find the largest number in a list
  print('\nTask 6:');
  var numbers = [3, 7, 1, 9, 5];
  print('Largest number in $numbers is ${findLargest(numbers)}');

  // Task 7: Use try-catch block to catch an exception
  print('\nTask 7:');
  catchError();
}
