// 🔹 Assignment 1: Basic Mixin Usage
// Create a mixin called CanFly with a method fly() that prints "I can fly!".
// Then, create a class Bird that uses the CanFly mixin.
// Create an object of Bird and call the fly() method.

// 03
void main() {
  Bird myBird = Bird();
  myBird.fly(); // Output: I can fly!
}

// 02
class Bird with CanFly {}

// 01
mixin CanFly {
  void fly() {
    print("I can fly!");
  }
}


