// Assignment 5: Abstract Class for Employee
// Question:
// Create an abstract class Employee with an abstract method calculateSalary(). Then, create two subclasses FullTimeEmployee and PartTimeEmployee, where each subclass implements calculateSalary() with different logic (e.g., a full-time employee gets a fixed salary, and part-time employees are paid by hours worked). Use the main function to create objects and print their salaries.



// Main function to test salary calculations
void main() {
  Employee fullTimeEmployee = FullTimeEmployee(50000);  // Full-time employee with a salary of 50,000
  Employee partTimeEmployee = PartTimeEmployee(20, 80);  // Part-time employee with hourly rate of 20 and worked 80 hours

  print("Full-Time Employee Salary: \$${fullTimeEmployee.calculateSalary()}");  // Output: 50000.0
  print("Part-Time Employee Salary: \$${partTimeEmployee.calculateSalary()}");  // Output: 1600.0
}


// 01- Define the abstract class Employee
abstract class Employee {
  double calculateSalary();  // Abstract method to calculate salary
}

// 02- Create the FullTimeEmployee class that extends Employee and implements calculateSalary()
class FullTimeEmployee extends Employee {
  double fixedSalary;

  FullTimeEmployee(this.fixedSalary);

  @override
  double calculateSalary() {
    return fixedSalary;  // Full-time employees have a fixed salary
  }
}

// 03- Create the PartTimeEmployee class that extends Employee and implements calculateSalary()
class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee(this.hourlyRate, this.hoursWorked);

  @override
  double calculateSalary() {
    return hourlyRate * hoursWorked;  // Part-time employees are paid by hours worked
  }
}