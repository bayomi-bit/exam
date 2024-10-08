import 'dart:io';

import 'book.dart';
import 'library.dart';

void main() async {
  //Q1
  print("enter 5 numbers");
  List list = [];
  for (int i = 0; i < 5; i++) {
    int num = int.parse(stdin.readLineSync()!);
    list.add(num);
  }
  print(list.reversed);

  //Q2

  var list1 = [1, 2, 3, 4, 5];
  getList(list1);

//Q3-
//1- abstract fun is a function without body that child class override this method and write it
//2- constructor is special method that init value into class

  Book book = Book("dart", "mo", 2024);
  book.getDetails();
  book.isPublishesdAfter(2000);
  Library library = Library();
  library.addBook(book);
  await library.fetchBooksFromServer();
  library.getAllBooks();
  library.findBookById("dart");
}

void getList(List list) {
  list.sort();
  print(list.last - 1);
  print(list.first + 1);
}
