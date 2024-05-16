import 'dart:io';
import 'dart:math';

bool winner = false;
bool isXturn = true;
int moveCount = 0;

List<String> value = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
List<String> combinations =['012', '048', '246', '147', '345', '678'];

void generateBoard (){
  print(' |  |  ');
  print(' ${value[0]}|${value[1]}|${value[2]}');
   print(' |  |  ');
  print(' ${value[3]}|${value[4]}|${value[5]}');
   print(' |  |  ');
  print(' ${value[6]}|${value[7]}|${value[8]}');
   print(' |  |  ');
  print(' ${value[0]}|${value[1]}|${value[2]}');
}
void getNextCharacter(){
  print('Choose number for ${isXturn == true? "x": "O"}');
int number = int.parse(stdin.readLineSync());
values [number -1] = isXturn? 'X': "O";
//change players turn 
isXturn = !isXturn;
//increment moe count
moveCount++;
if (moveCount == 9)
{
  winner = true;
}
else {
  //clear the console
  clearScreen();
  //create the boad with new information
  generateBoard();
}
checkWinner ('X');
//check validity for player zero
checkWinner('0');

}


|1|2|3|
|4|5|6|
|9|8|9|
