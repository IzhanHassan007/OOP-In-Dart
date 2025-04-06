// Assignment 6: Enum for Order Status
// Create an enum OrderStatus (Pending, Processing, Shipped, Delivered, Cancelled). Create a class Order with a status of type OrderStatus. Write a function to update and display the order progress with appropriate messages.
void main() {
  Order order = Order();
  order.updateStatus(OrderStatus.Cancelled);
  order.displayOrderProgress();
}

enum OrderStatus { Pending, Processing, Shipped, Delivered, Cancelled }

class Order {
  OrderStatus status = OrderStatus.Pending; // Default status is Pending
  void updateStatus(OrderStatus newStatus) {
    status = newStatus;
  }

  void displayOrderProgress() {
    switch (status) {
      case OrderStatus.Pending:
        print('Order is pending...');
        break;

      case OrderStatus.Processing:
        print('Order is being processed...');
        break;

      case OrderStatus.Shipped:
        print('Order has been shipped...');
        break;

      case OrderStatus.Delivered:
        print('Order has been delivered...');
        break;

      case OrderStatus.Cancelled:
        print('Order has been cancelled...');
        break;
    }
  }
}
