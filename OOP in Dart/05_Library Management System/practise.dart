void main() {
  //------------------03 Start--------------------------
  // Hum "Book" class k do Object create krengy, book1 & book2 and Data pass krdengy

  Book book1 = Book('The Message', 'Shibli', '321fs', true);
  Book book2 = Book('The Universe', 'Farooq', '342yr', true);

  //------------------03 End--------------------------

  //------------------04 Start--------------------------
  // Library ka Object create krengy & uska aik function banaya tha 'addBook', hum usko 'book1' wala objext pass krengy and call krengy

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.listBook();
  //------------------04 End--------------------------

  //------------------10 Start--------------------------
  // Creating Members Objects
  Member member = Member('Izhan Hassan', 'BB-8913');
  //------------------10 End--------------------------

  //------------------11 Start--------------------------
  library.loanBooks(book1, member);

  // again ab hum dobara check krengy kosi book available h
  library.listBook();
  library.listLoanBook();

  //------------------11 End--------------------------
}

/*------------------01 Start------------------------
pehly hum Book ki class bana lengy or uska Constructor create krlengy*/
class Book {
  // Creating Class
  String title;
  String author;
  String isbn;
  bool isAvailable;

  // Creating Cosntructor
  Book(this.title, this.author, this.isbn, this.isAvailable);
}
//------------------01 End--------------------------

//------------------02 Start------------------------
// yahan Library ki class create ki h and usmu List m Book ka Obj pass krdia
class Library {
  List<Book> books = [];

  //------------------08 Start--------------------------
  List<Loan> loans = [];
  // list create ki and "Loan" pass krdia, usmy Loan ki sari details ajati hen
  // isko hum yahan loan m sy 2 instance pass krengy, book and member
  void loanBooks(Book book, Member member) {
    // jb hum book kisi ko assign krengy to hum checkh krengy k book available h ya nh,
    if (book.isAvailable) {
      // isko hum false set krdengy
      book.isAvailable = false;
      // loans wali list m hum 'Loan' wala parameter add krdengy
      loans.add(Loan(book, member, DateTime.now()));
    } else {
      print("${book.title} is not available");
    }
  }
  //------------------08 End--------------------------

  // phr hum ny Function likha h, yahan hum jb function "addBook" ko call krengy to hamary liye ye books ko add krdey ga and function m jo (parameters) pass kia h wo Books ka object pass kia h..
  void addBook(Book book) {
    books.add(book);
  }
  //------------------02 End--------------------------

  //------------------05 Start--------------------------
  // yahan hum Library k andr aik or function likhegy jis m hum ismy tamam Books ko List krengy and ismy hum list krny k liyee Loop chalaye gy
  void listBook() {
    print('-----List of all Books in Library-----');
    for (var book in books) {
      // ye loop hamari List k upr run hoga
      print(
        'Title: ${book.title}, Author: ${book.author}, ISBN: ${book.isbn}, Available: ${book.isAvailable}',
      );
    }
  }

//------------------05 End----------------------------

//------------------12 Start--------------------------
// ab hum aik or function likhty hen k wo tamam books humen list krdo jo hum ny issue kr rakhi hen
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

//------------------12 End--------------------------


//------------------06 Start--------------------------
// creating Members Class
class Member {
  String name;
  String memberID;

  Member(this.name, this.memberID);
}
//------------------06 End--------------------------

//------------------07 Start------------------------
// Creating Loan Class
class Loan {
  Book book;
  Member member;
  DateTime loanDate;
  DateTime? returnDate;

  Loan(this.book, this.member, this.loanDate, [this.returnDate]);

  // "returnDate" ka aikmfunction likha h,
  void returBook() {
    returnDate = DateTime.now();
    book.isAvailable = true;
  }
}
//------------------07 End--------------------------