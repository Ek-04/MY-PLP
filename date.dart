
enum Car {
  benz,
  volkswagen,
  subaru,
  ford,
}
void main() {
  // Accessing enum values
  print(Car.benz);

  // Converting enum to string
  String carString = Car.volkswagen .toString();
  print(carString); 

  // Accessing enum values using index
  print(Car.values[2]); 

  // Iterating through enum values
  for (var car in Car.values) {
    print(car);
  }
}