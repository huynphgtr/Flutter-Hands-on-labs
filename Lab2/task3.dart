void main() {
  Map<String, int> scores = {'Alice': 10, 'Bob': 5, 'Charlie': 8, 'David': 7};
  // for (String name in scores.keys) {
  //   if (scores[name]! > 6 && scores[name]! < 9) {
  //     print('$name is a good student with a score of ${scores[name]}');
  //   } else if (scores[name]! >= 9) {
  //     print('$name is an excellent student with a score of ${scores[name]}');
  //   } else {
  //     print('$name needs improvement with a score of ${scores[name]}');
  //   }
  // }

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
