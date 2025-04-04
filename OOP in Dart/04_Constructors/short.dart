// Contructors - Constructor is a special method that is called when an object is created. It is used to initialize the object's state.
void main() {
  Student student = Student(name: 'Izhan', age: 24, email: 'ads2@wds');
  student.display();

  List<Student> studentList = [
    Student(age: 24, email: 'ads2@wds'),
    Student(name: 'Imran', age: 24, email: 'ads2@wds'),  // email is required
    Student(name: 'Anas', email: 'ads2@wds'),
    ];

// calling function
  studentList.forEach((element) {
    print('name ${element.name} age ${element.age}, email ${element.email}');
  });
}

// creating class
class Student {
  String? name;
  int? age;
  String? email;

  // creating constructor -- consider it a function -- passing value
  Student({this.name = '', this.age = 0, required this.email}) {
    print('called');
  }

  void display() {
    print('--------------------------------');
    print("My Name is: $name");
    print("My Name is: $email");
    print("My Age is: $age");
    print('--------------------------------');
  }
}
