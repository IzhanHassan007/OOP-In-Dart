// Assignment 5: Real-Life Scenario with Mixins

// Create three mixins:
// Cook with method cook()
// Drive with method drive()
// Code with method code()

// Now create a class Engineer that uses Code and Drive,
// and a class Chef that uses Cook and Drive.
// Create objects of both classes and test all methods.

// 06
void main() {
  // Test Engineer
  Engineer engineer = Engineer();
  engineer.code();  // Output: Writing code...
  engineer.drive(); // Output: Driving vehicle...

  // Test Chef
  Chef chef = Chef();
  chef.cook();      // Output: Cooking food...
  chef.drive();     // Output: Driving vehicle...
}

// 04
class Engineer with Code, Drive {}

// 05
class Chef with Cook, Drive {}

// 01
mixin Cook {
  void cook() {
    print("Cooking food...");
  }
}

// 02
mixin Drive {
  void drive() {
    print("Driving vehicle...");
  }
}

// 03
mixin Code {
  void code() {
    print("Writing code...");
  }
}
