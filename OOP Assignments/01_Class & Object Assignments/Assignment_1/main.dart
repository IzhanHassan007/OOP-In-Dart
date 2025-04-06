void main(){
  carModel myCar = carModel();

  myCar.name = "Honda Civic";
  myCar.color = "Black";
  myCar.model = 2022;
  
  myCar.display();
}

class carModel{
  String? name;
  String? color;
  int? model;

void display(){
  print("I have a Car: $name");
  print("My Car Color is: $color");
  print("My Car Model is: $model");
}
} 