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
