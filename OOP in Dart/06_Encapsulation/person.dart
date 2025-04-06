class Person {
  // apply encapsulation to protect data by using "_name"
  String _name;
  int _age;

  // Constructor
  Person(this._name, this._age);

  // Getter Method
  String get name => _name;
  int get age => _age;

  // Setter Method

  set setName(String name){
    _name = name;
  }

  set setAge(int age){
    if (age > 0) {
      _age = age; 
    }
  }

  // method to display persons details
  void displayInfo() {
    print("Name : $_name, Age : $_age");
  }
}
