## Lab 2 : Dart Essentials Practice Lab

### Task 1: Basic Syntax & Data Types

**1. Requirements:**
- Practice program structure and variable declarations.
- Steps: 
    + Create a main() function.
    + Declare variables using: int, double, String, bool.
    + Use print() and string interpolation ($var, ${expr}) to show values.

**2. Code file:** [Lab02-Task1](./task1.dart/).

```dart
void main() {
  int a = 5;
  double b = 3.14;
  String name = "Alice";
  bool isStudent = true;
  print("Integer: $a");
  print("Double: $b");
  print("String: $name");
  print("Boolean: $isStudent");

  var c = 10;
  var d = 3.14;
  var name2 = "Bob";
  var isTeacher = false;
  print("$c, ${c.runtimeType}");
  print("$d, ${d.runtimeType}");
  print("$name2, ${name2.runtimeType}");
  print("$isTeacher, ${isTeacher.runtimeType}");
}

```
--- 

### Task 2: Collections & Operators

**1. Requirements:**
- Work with List, Set, Map and operators (+, -, ==, &&, ? :).
- Steps: 
    + Create a List of integers.
    + Use arithmetic & comparison operators.
    + Create a Set (unique values) and a Map (key-value).
    + Use indexing, add(), remove(), and map access.

**2. Code file:** [Lab02-Task2](./task2.dart/)
```dart
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  Set<String> names = {'Alice', 'Bob', 'Charlie'};
  Map<String, int> nameToAge = {'Alice': 30, 'Bob': 25, 'Charlie': 35};

  numbers.add(6);
  names.add('David');
  nameToAge['David'] = 28;

  int firstElement = numbers[0];

  int sum = numbers[2] + numbers[3];
  int product = numbers[2] * 2;
  bool isGreater = numbers[1] > numbers[0];
  bool isEqual = numbers[2] == sum;

  print('First element: $firstElement');
  print('Sum: $sum');
  print('Product: $product');
  print('Is greater: $isGreater');
  print('Is equal: $isEqual');

  for (int number in numbers) {
    print(number);
  }
  for (String name in names) {
    print(name);
  }
  for (String name in nameToAge.keys) {
    print('$name is ${nameToAge[name]} years old');
  }
}

```
--- 

### Task 3: Control Flow & Functions

**1. Requirements:**
- Apply if/else, switch, loops, and functions.
- Steps: 
    + Write an if/else block to check score.
    + Write a switch case for day of week.
    + Loop through a collection using for, for-in, and forEach().
    + Create a function using normal and arrow syntax.


**2. Code file:** [Lab02-Task3](./task3.dart/)
```dart
void main() {
  Map<String, int> scores = {'Alice': 10, 'Bob': 5, 'Charlie': 8, 'David': 7};

  scores.forEach((name, score) {
    if (score > 6 && score < 9) {
      print('$name is a good student with a score of $score');
    } else if (score >= 9) {
      print('$name is an excellent student with a score of $score');
    } else {
      print('$name needs improvement with a score of $score');
    }
  });

  int currentDay = 4;
  switch (currentDay) {
    case 1:
      print('Today is Monday');
      break;
    case 2:
      print('Today is Tuesday');
      break;
    case 3:
      print('Today is Wednesday');
      break;
    case 4:
      print('Today is Thursday');
      break;
    case 5:
      print('Today is Friday');
      break;
    case 6:
      print('Today is Saturday');
      break;
    case 7:
      print('Today is Sunday');
      break;
    default:
      print('Invalid day');
  }

  int calculateTotal(int price, int tax) {
    return price + tax;
  }

  int price = 100;
  int tax = 20;
  int total = calculateTotal(price, tax);
  print('Total price: $total');
}

```
--- 

### Task 4: Intro to OOP

**1. Requirements:**
- Practice classes, objects, constructors, inheritance, and overriding.
- Steps: 
    + Create a class Car with one property and a method.
    + Create a named constructor.
    + Create a subclass ElectricCar that overrides a method.
    + Instantiate objects and print results.


**2. Code file:** [Lab02-Task4](./task4.dart/)
```dart
class Car{
  String? brand;
  String? model; 
  String? color;  
  Car(String brand, String model, String color){
    this.brand = brand;
    this.model = model;
    this.color = color;
  }

  void displayInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Color: $color');
  }

  void startEngine() {
    print('The engine of the $brand $model is starting...');
  }
}

class ElectricCar extends Car{
  int? batteryCapacity;
  // ElectricCar(String brand, String model, String color) : super(brand, model, color);
  ElectricCar(String brand, String model, String color, int batteryCapacity) : super(brand, model, color){
    this.batteryCapacity = batteryCapacity;
  }
  @override
  void displayInfo() {
    super.displayInfo();
    print('Battery Capacity: $batteryCapacity kWh');
  } 
  @override
  void startEngine() {
    print('The electric engine of the $brand $model is starting silently...');
  }

}


void main(){
  Car car1 = Car('Toyota', 'Camry', 'Red');
  car1.displayInfo();
  car1.startEngine();
  ElectricCar electricCar1 = ElectricCar('Tesla', 'Model S', 'Blue', 100);
  electricCar1.displayInfo();
  electricCar1.startEngine();
}
```

--- 

### Task 5: Async, Future, Null Safety & Streams

**1. Requirements:**
- Work with Dart’s asynchronous features.
- Steps: 
    + Create an async function using Future + await.
    + Use Future.delayed() to simulate loading.
    + Practice null-safety operators (?, ??, !).
    + Create a simple Stream of integers and listen to values.


**2. Code file:** [Lab02-Task5](./task5.dart/)
```dart
Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return order;
}

Future<String> fetchUserOrder() =>
    Future.delayed(const Duration(seconds: 2), () => 'Latte');

// Using null safety:
Future<void> makeCoffee(String coffee, [String? dairy]) async {
  await Future.delayed(const Duration(seconds: 2));
  if (dairy != null) {
    print('Making $coffee with $dairy');
  } else {
    print('Making $coffee without dairy');
  }
}

Future<void> main() async {
  print('Fetching user order...');
  final order = await createOrderMessage();
  print('Order received: $order');
  await makeCoffee(order, null);
}

```