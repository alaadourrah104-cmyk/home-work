// Q5
// Create a class Book with private fields _title and _pages.
// - Add setters: reject empty titles and pages ≤ 0.
// - Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
// - In main(), create a book, print its title and estimated reading time

void main() {
  Book book1 = Book();
  book1.pages = 5;
  book1.title = "";
  print(
    "the title is ${book1.title} and number of pages is ${book1.pages} and reading time is ${book1.readingTime}",
  );
}

class Book {
  String _title = "Good story";
  int _pages = 10;

  set title(String title) {
    if (title.isEmpty) {
      print("in valid");
    } else {
      this._title = title;
    }
  }

  String get title => _title;

  set pages(int pages) {
    if (pages <= 0) {
      print("in valid");
    } else {
      this._pages = pages;
    }
  }

  int get pages => _pages;
  int get readingTime => _pages * 2;
}
