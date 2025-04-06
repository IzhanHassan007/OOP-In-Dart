void main() {
  Dog dog = Dog();
    dog.sound();
}

// Interface
abstract class Animal {
  // Abstract Method - jis ki body nhi hogi - {-Body-} use nh krengy
  void sound();

  // Non-Abstract Method
  void eat() {
    print('Animal is eating');
  }
}

class Dog extends Animal {
  // Abstract Method ko override krengy and body add krengy
  @override
  void sound() {
    super.eat();
    print('Dog is barking');
  }
}

class Cat extends Animal {
  // Abstract Method ko override krengy and body add krengy
  @override
  void sound() {
    print('Cat is meowing');
  }
}
