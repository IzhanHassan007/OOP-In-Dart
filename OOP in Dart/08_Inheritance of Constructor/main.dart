void main() {
  macBook macbook = macBook('Macbook', 100000, '14 Pro');
  macbook.displayInfo();
}

// Parent Class
class Laptop {
  String brand;
  double price;

  Laptop(this.brand, this.price) {
    print('Laptop is Called');
  }
  void displayInfo() {
    print('Brand: $brand');
    print('Price: $price');
  }
}

// Child Class - Inheritance of Constructor
class macBook extends Laptop {
  String model;
  macBook(String brand, double price, this.model) : super(brand, price);

void displayInfo() {
  super.displayInfo();      // is sy parent m displayInfo call hoga
  print('Model: $model');  // is sy sirf child m model call hoga
} 
}