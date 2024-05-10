import 'dart:io';
///declare and enumerator MathOperarions which will contain common math operations
enum MathOperation {
  addition,
  subtraction,
  multiplication,
  division,
}
//create a fucntion that tkaes the arguments  a and b 
//create a fucntion that tkaes the arguments  a and b 
double performOperation(double a, double b, MathOperation operation) {
  //use switch case to pass the math operatios 
  switch (operation) {
    case MathOperation.addition:
      return a + b;
    case MathOperation.subtraction:
      return a - b;
    case MathOperation.multiplication:
      return a * b;
    case MathOperation.division:
      if (b != 0) {
        return a / b;
      } else {
        throw ArgumentError('Division by zero');
      }
  }
}

void main() {
  try {
    // Perform a math operation
    double result = performOperation(5, 6, MathOperation.addition);
    print("Result: $result");

    // Print numbers from 20 to 10 using a do-while loop
    var j = 20;
    do {
      print("j = $j");
      j--;
    } while (j >= 10);

    // Input validation and check if a number is even or odd
    stdout.write('Enter a number: ');
    int? k = int.tryParse(stdin.readLineSync()!);
    if (k != null) {
      if (k % 2 == 0) {
        print("k is even");
      } else {
        print("k is odd");
      }
    } else {
      print('Invalid input. Please enter a valid number.');
    }

    // Find the largest number in the list
    List<int> numbers = [51, 1011, 309, 800, 192, 70];
    int largestNumber = numbers.reduce((value, element) => value > element ? value : element);
    print('The largest number is: $largestNumber');
  } catch (e) {
    print('Error: $e');
  }
}
