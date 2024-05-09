 //declaration of class individual whic is the parent class 
 class Individual {
  String name;
  int age;

  Individual(this.name, this.age);

  void displayIndividualInfo() {
    print("Individual name is: $name");
    print("Individual age is: $age");
  }

  void displayLevel() {
    print("This level!");
  }
}
//child class student inherits properties of the class Individual
class Student extends Individual {//INHERITANCE 
  double gradeLevel;

  Student(String name, int age, this.gradeLevel) : super(name, age);
//the Student class overrides the method display level
  @override
  void displayLevel() {
    print("Student level is: $gradeLevel");
  }
}

class Teacher extends Individual {//INHERITANCE 
  // Child property
  String subject;

  Teacher(String name, int age, this.subject) : super(name, age);
  //ENCAPSULATION
//the class teacher overrides the method display level
  @override
  void displayLevel() {
    print("Subject taught is: $subject");
  }
}
//in the main function the methods form bothtthe parent class and the child classes are called 
void main() {
  Student s1 = Student("Harry", 18, 1.2);
  s1.displayIndividualInfo();
  s1.displayLevel();

  Teacher t1 = Teacher("Peter", 38, "Math");
  t1.displayIndividualInfo();
  t1.displayLevel();
}
