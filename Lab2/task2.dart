// Task 2: Collections & Operators

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
