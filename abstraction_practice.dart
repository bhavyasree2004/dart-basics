abstract class Payment {
  void pay(double amount);
  void printReceipt(double amount) {
    print("Payment of ${amount} completed");
  }
}

class CreditCardPayment extends Payment {
  @override
  void pay(double amount) {
    print('Paid ${amount} using credit card');
  }
}

class UPIPayment extends Payment {
  @override
  void pay(double amount) {
    print('Paid ${amount} using UPI');
  }
}

void main() {
  Payment p1 = CreditCardPayment();
  p1.pay(3000);
  p1.printReceipt(3000);
  Payment p2 = UPIPayment();
  p2.pay(4000);
  p2.printReceipt(4000);
}
