// Assignment 4: Enum in Calculator App
// Create an enum Operation with values (Add, Subtract, Multiply, Divide). Write a calculator function that accepts two numbers and an Operation enum, and performs the operation accordingly.

void main(){
  Calculator calculator = Calculator();
  calculator.calculate(10, 5, Operation.Add);
}
class Calculator{
  void calculate(int num1, int num2, Operation operation){
    
    switch(operation){
      case Operation.Add:
        print(num1 + num2);
        break;

      case Operation.Subtract:
        print(num1 - num2);
        break;

      case Operation.Multiply:
        print(num1 * num2);
        break;

      case Operation.Divide:
        print(num1 / num2);
        break;
    }
  }
}

enum Operation {Add, Subtract, Multiply, Divide}