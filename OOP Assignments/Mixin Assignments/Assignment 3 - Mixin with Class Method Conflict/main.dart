// Assignment 3: Mixin with Class Method Conflict

// Create two mixins:

// Artist with method skill() that prints "Drawing"
// Dancer with method skill() that prints "Dancing"

// Create a class Person that uses both mixins.
// Override the skill() method to print "Multi-talented"
// Then create an object of Person and call the method.


// 04
void main() {
  Person p = Person();
  p.skill(); // Output: Multi-talented
}

// 03
class Person with Artist, Dancer {
  @override
  void skill() {
    print("Multi-talented");
  }
}

// 01
mixin Artist {
  void skill() {
    print("He can Draw and Paint");
  }
}

// 02
mixin Dancer {
  void skill() {
    print("He can Dance and Sing");
  }
}
