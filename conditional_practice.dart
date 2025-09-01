// Write a Dart program to simulate a simple ATM:
//
// Input: account balance = 5000.
//
// User enters an amount to withdraw.
//
// Conditions:
//
// If amount is greater than balance, print "Insufficient balance".
//
// If amount is less than or equal to 0, print "Invalid amount".
//
// If amount is divisible by 100, deduct it and show remaining balance.
//
// Otherwise, print "Enter amount in multiples of 100".
import 'dart:io';

void main() {
  int bal = 5000;
  print("Enter amount to withdraw: ");
  int amount = int.parse(stdin.readLineSync()!);
  if (amount > bal) {
    print("Insufficient balance");
  } else if (amount <= 0) {
    print("Invalid amount");
  } else if (amount % 100 == 0) {
    bal -= amount;
    print('Remaining balance: ${bal}');
  } else {
    print("Enter the amount in multiples of 100");
  }
}
