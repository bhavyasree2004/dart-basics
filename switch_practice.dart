import 'dart:io';

void main() {
  print("Enter a: ");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter b: ");
  int b = int.parse(stdin.readLineSync()!);
  print("Enter op: ");
  String op = stdin.readLineSync()!;
  switch (op) {
    case '+':
      print('Sum ${a + b}');
      break;
    case '-':
      print('Difference ${a - b}');
      break;
    case '*':
      print('Product ${a * b}');
      break;
    case '/':
      print('Division ${a / b}');
      break;
    default:
      print("Entered invalid operator");
  }
}
