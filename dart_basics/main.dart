class Person {
  String name = 'Kevin';
  int age = 31;
}

double addNumbers(double num1, double num2){
  return num1 + num2;
}
 
void main () {
  var p1 = Person();
  var p2 = Person();
  p2.name = "Sally";
  p2.age = 28;
  print("Name: ${p1.name} \nAge: ${p1.age}");
  print("Name: ${p2.name} \nAge: ${p2.age}");
  double firstResult;
  firstResult = addNumbers(1, 1);
  print(firstResult + 1.5);
}
