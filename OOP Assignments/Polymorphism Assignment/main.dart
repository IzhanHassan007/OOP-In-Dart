// 04- Main function to demonstrate polymorphism
void main() {
  // Create a list of Employee objects with different types
  List<Employee> employees = [
    Manager(),
    Developer(),
    Employee()  // A generic Employee
  ];

  // 05- Iterate through the list and call the work() method for each employee
  for (var employee in employees) {
    employee.work();  // Polymorphism in action
  }
}

// 01- Define the Employee class
class Employee {
  void work() {
    print("Employee is working");
  }
}

// 02- Create the Manager class that extends Employee and overrides work() method
class Manager extends Employee {
  @override
  void work() {
    print("Manager is managing");
  }
}

// 03- Create the Developer class that extends Employee and overrides work() method
class Developer extends Employee {
  @override
  void work() {
    print("Developer is coding");
  }
}