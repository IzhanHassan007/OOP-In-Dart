void main() {
  // 03 Step- Creating object
  Person person = Person(); // creating object
  Person person1 = Person(); // another object

  // 04 Step- initializing variable
  person.MyName = "Izhan Hassan";       // initializing variable
  person.fatherName = "Maqsood Hassan";
  person.age = 24;

  person1.MyName = "Anas Hassan";       // initializing variable
  person1.fatherName = "Maqsood Hassan";
  person1.age = 23;

  // 05 Step- calling function
  person.display(); // calling function
  person1.display(); // calling function
}

// 01 Step- Creating class  -- pehly hum class banaye gy
class Person {
  String? MyName;
  String? fatherName;
  int? age;

// 02 Step- Creating function to print  -- phir hum function banaye gy
void display() {
    print("My Name is: $MyName");
    print("My Father Name is: $fatherName");
    print("My Age is: $age");
}
  }
