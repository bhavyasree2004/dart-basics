// You have a shopping cart represented as a Map:
//
// Map<String, int> cart = {
//   'Shoes': 2500,
//   'T-Shirt': 800,
//   'Jeans': 1500,
//   'Watch': 3000,
//   'Belt': 400,
//   'Cap': 200,
// };
//
// Print all items using a for-in loop.
//
// Calculate the total price of all items using reduce().
//
// Apply a 10% discount on all items costing more than 1000 (use map() or iteration).
//
// Filter items with price less than 500 (use where()).
//
// Remove one item (say "Cap") using remove().
//
// Find the most expensive item and print its name + price.

void main() {
  Map<String, int> cart = {
    'Shoes': 2500,
    'T-Shirt': 800,
    'Jeans': 1500,
    'Watch': 3000,
    'Belt': 400,
    'Cap': 200,
  };
  //Printing all items using for-in loop
  for (String item in cart.keys) {
    print(item);
  }
  //Calculating the total price of all the items
  int totalPrice = cart.values.reduce((a, b) => a + b);
  print(totalPrice);

  //Applying a 10% discount on all items costing more than 1000
  cart.forEach((item, price) {
    if (price > 1000) {
      cart[item] = (price * 0.9).toInt();
    }
  });
  print(cart);

  //Filtering items with price less than 500
  cart.entries
      .where((item) => item.value < 500)
      .forEach((item) => print(item.key));

  //Removing an item
  cart.remove("Cap");
  print(cart);

  //Finding the most expensive item
  MapEntry<String, int> expensiveItem = cart.entries.reduce(
    (a, b) => a.value > b.value ? a : b,
  );
  print('${expensiveItem.key} ${expensiveItem.value}');
}
