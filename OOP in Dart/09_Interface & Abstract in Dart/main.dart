// Interface in Dart
// An interface provides a syntax that class must follow.
void main() {
  macBook macbook = macBook();
  macbook.turnON();
  macbook.turnOFF();
}

// Interface Class , This is Concrete Class
class Laptop {
  void turnON() {
    print('Laptop turn on');
  }

  void turnOFF() {
    print('Laptop turn off');
  }
}

// Method to create Interface Class
class macBook implements Laptop {
  @override
  void turnON() {
    print('MacBook turn on');
  }

  @override
  void turnOFF() {
    print('MacBook turn off');
  }
}
