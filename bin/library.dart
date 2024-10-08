import 'book.dart';

class Library {
  List<Book> books = [];
  static int totalBooks = 0;

  void addBook(Book book) {
    totalBooks += totalBooks;
    books.add(book);
  }

  static int getTotalBooks() {
    return totalBooks;
  }

  void getAllBooks() {
    for (var i in books) {
      i.getDetails();
    }
  }

  void findBookById(String title) {
    for (var i in books) {
      if (i.title == title) {
        print("${i.title}is found");
      } else {
        print("not found");
      }
    }
  }

  Future<void> fetchBooksFromServer() async {
    Book book = Book("c++", "ali", 2020);
    addBook(book);
    Book book2 = Book("java", "ali", 2020);
    addBook(book2);
    return await Future.delayed(
        Duration(milliseconds: 2000), () => print("is fetched"));
  }
}
