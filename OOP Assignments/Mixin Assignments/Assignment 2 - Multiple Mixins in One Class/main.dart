// Assignment 2: Multiple Mixins in One Class

// Create two mixins:

// CanSwim with method swim() that prints "Swimming..."

// CanWalk with method walk() that prints "Walking..."

// Now create a class Human that uses both mixins and test all methods.

// 04
void main() {
  Human person = Human();
  person.swim(); // Output: Swimming...
  person.walk(); // Output: Walking...
}

// 03
class Human with CanSwim, CanWalk {}

// 01
mixin CanSwim {
  void swim() {
    print("He is Swimming...");
  }
}

// 02
mixin CanWalk {
  void walk() {
    print("He is Walking...");
  }
}
