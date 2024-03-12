import 'dart:io';

Future<void> main() async {
  stdout.write("Enter your number:");
  String? n = stdin.readLineSync();
  print(" you chose $n");
}
