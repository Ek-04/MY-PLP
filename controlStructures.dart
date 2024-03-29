import 'dart:io';

void main() {
  // Prompt the user for input
  stdout.write("Enter your number: ");

  // Read user input as a String
  String? input = stdin.readLineSync();

  // Check if input is not null (user entered something)
  if (input != null) {
    try {
      // Try parsing the input to an integer
      int n = int.parse(input);

      // Check the number and print appropriate message
      if (n < 10) {
        print("Your number is less than 10");
      } else if (n > 10) {
        print("Your number is greater than 10");
      } else {
        print("The number is equal to 10");
      }
    } catch (e) {
      // Handle non-integer input
      print("Invalid input. Please enter a valid integer.");
    }
  }
}
