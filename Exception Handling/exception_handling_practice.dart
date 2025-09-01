import 'dart:io';

import 'Exceptions/insufficient_balance_exception.dart';

void main() {
  int bal = 5000;
  print("Enter amount to withdraw");

  try {
    int amount = int.parse(stdin.readLineSync()!);
    if (amount > bal) {
      throw InsufficientBalanceException();
    }
    bal -= amount;
    print('Withdrawal successful! Remaining Balance:${bal}');
  } on FormatException {
    print('Invalid number format');
  } on InsufficientBalanceException catch (e) {
    print(e.errMsg());
  } finally {
    print("Transaction completed");
  }
}
