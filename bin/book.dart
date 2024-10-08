class Book {
  String? title;
  String? author;
  int? year;

  Book(this.title, this.author, this.year);

  void getDetails() {
    print("$title by $author published in $year ");
  }

  bool isPublishesdAfter(int year) {
    if (this.year! > year) {
      return true;
    } else {
      return false;
    }
  }
}
