import 'dart:io';

//initializing parent class furniture
class Furniture {
  String? type;
  String? color;
  String? material;
  int? price;
//interface implelemented by the class with the methods sell and buy
  bool buy(int price) {
    print("price is : $price");
    if (price < 200) {
      print("Good for Purchace!");
    } else {
      print("price is too high!");
    }
    return true;
  }

  bool sell(int price) {
    print("price is : $price");
    if (price < 200) {
      print("Price is too low!");
    } else {
      print("good for sale!");
    }
    return true;
  }
  // this method uses a whie loop to loop over the sell and buy methods
  void moveFurniture() {
    bool readyForDelivery = false;
    while (!readyForDelivery) {
      readyForDelivery = this.sell(0) || this.buy(0);
      if (readyForDelivery) 
      {
        print("Ready for delivery!");
      }
    }
  }
Furniture(this.type, this.color, this.material, this.price);
}

//class furniture1 inherits propertiies of furniture and overides the inherited methods
class Furniture1 extends Furniture {
  Furniture1() : super("table", "white", "wood", 100);
}

void main() {
  // Prompt the user to enter values for  their furniture
  stdout.write('Enter name: ');
  String? type= stdin.readLineSync();
  stdout.write('Enter color: ');
  String? color= stdin.readLineSync();
  stdout.write('Enter material: ');
  String? material= stdin.readLineSync();
stdout.write('Enter price: ');
  int? price = int?.tryParse(stdin.readLineSync()!);

  // Create an instance of the Furiture class using the entered values
  var furniture= Furniture(type, color, material, price);

  //calling the furiniture methods 
  furniture.sell(1);
  furniture.buy(1);
  furniture.moveFurniture();
  
}
