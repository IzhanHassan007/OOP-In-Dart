// Assignment 4: Interface for Payment Methods
// Define an interface Payment with methods processPayment() and refund(). Create two classes CreditCard and PayPal that implement the Payment interface. Each class should provide its own logic for processing payment and handling refunds. Demonstrate the payment methods in the main function.

// Define the Payment interface
abstract class Payment {
  void processPayment(double amount); // Method to process payment
  void refund(double amount);          // Method to refund
}

// Create the CreditCard class that implements the Payment interface
class CreditCard implements Payment {
  @override
  void processPayment(double amount) {
    print("Processing credit card payment of \$${amount}");
  }

  @override
  void refund(double amount) {
    print("Refunding \$${amount} to credit card");
  }
}

// Create the PayPal class that implements the Payment interface
class PayPal implements Payment {
  @override
  void processPayment(double amount) {
    print("Processing PayPal payment of \$${amount}");
  }

  @override
  void refund(double amount) {
    print("Refunding \$${amount} to PayPal account");
  }
}

// Main function to demonstrate payment methods
void main() {
  Payment creditCardPayment = CreditCard();
  Payment paypalPayment = PayPal();

  creditCardPayment.processPayment(150.0);  // Output: Processing credit card payment of $150.0
  creditCardPayment.refund(50.0);           // Output: Refunding $50.0 to credit card

  paypalPayment.processPayment(200.0);      // Output: Processing PayPal payment of $200.0
  paypalPayment.refund(100.0);              // Output: Refunding $100.0 to PayPal account
}
