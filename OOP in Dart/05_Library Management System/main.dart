void main() {
  // 04- Creating Book Object
  Book book1 = Book('The World', 'Faris', '321fs', true);
  Book book2 = Book('Vintage', 'Ghazi', 'E2342', true);

  // 05- Creating Library Object - instance
  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.listBook();

  // 12- Creating Member Object
  Member member1 = Member('Izhan Hassan', 'BB-8913');

  // 13- Creating Loan Object
  library.loanBooks(book1, member1);

  // Again Listing to check Availability
  library.listBook();

  // 14- checking Loans List
  library.listLoanBook();
}

// 1- Creating Book Class - 1
class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, this.isAvailable);
}

// 2- Creating Library Class - 2
class Library {
  // Creating List of Books
  List<Book> books = [];
  // 10- Creating List of Loans
  List<Loan> loans = [];

  // 11- Creating Function "loanBook" in Library
  void loanBooks(Book book, Member member) {
    // First check if the book is available,
    if (book.isAvailable) {
      // Set the book False after loan
      book.isAvailable = false;

      // loans wali list m hum 'Loan' wala parameter add krdengy
      loans.add(Loan(book, member, DateTime.now()));
    } else {
      print("${book.title} is not available");
    }
  }

  // 3- Creating Function "addBook" in Library
  void addBook(Book book) {
    books.add(book);
  }

  // 6- Creating Function "listBook" in Library
  void listBook() {
    print('-----List of all Books in Library-----');
    for (var book in books) {
      // ye loop hamari List k upr run hoga
      print(
        'Title: ${book.title}, Author: ${book.author}, ISBN: ${book.isbn}, Available: ${book.isAvailable}',
      );
    }
  }

  // 14- Creating Function "listLoanBook" in Library

  void listLoanBook() {
    print('-----List of all Books in Library-----');
    for (var loan in loans) {
      // ye loop hamari List k upr run hoga
      print(
        'Title: ${loan.book.title}, Author: ${loan.book.author}, ISBN: ${loan.book.isbn}, Available: ${loan.book.isAvailable}',
      );
    }
  }
}

// 7- Creating Member Class - 3
class Member {
  String name;
  String id;

  Member(this.name, this.id);
}

// 8- Creating Loan Class - 4
class Loan {
  Book book;
  Member member;
  DateTime loanDate;
  DateTime? returnDate;

  Loan(this.book, this.member, this.loanDate, [this.returnDate]);

  // 09- Creating Function "loanBook" in Loan
  void returnBook() {
    returnDate = DateTime.now();
    book.isAvailable = true;
  }
}
