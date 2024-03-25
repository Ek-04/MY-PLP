import 'dart:io';

Future<void> main() async
{
stdout.write("Enter your number: ");
String? input =stdin.readLineSync();
if (input != null)
{
  int n = int.tryParse(input) ?? 0; //parse strig to integer 



  if (n < 10) 
  {
    print("your number si les than 10");
  } 
  else if (n > 10)
   {
    print("your number is greater than 10");
  } 
 else;
  {
    print("the number si equal to 10");
  }
}
}