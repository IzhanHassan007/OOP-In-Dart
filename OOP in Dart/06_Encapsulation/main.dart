// Encapsulation means hiding the data in a class or library to protect it from being accessed by other classes or libraries.

import 'person.dart';
void main() {
  Person person = Person('Izhan', 23); // creating object
  person.displayInfo();
  person.setName = 'Anas';
  person.setAge = 20;
  print(person.name);
  print(person.age);
  
}
