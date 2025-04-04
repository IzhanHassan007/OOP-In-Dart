void main() {
  int age = 10; // non null variable
  print(age);

  // null able values ka purpose ye h ki hum bad m value store kr skte h
  int? age1; // null variable
  String? name;

  print(age1);
  
  if (name == null) {
  print('name is null');
  }
}
