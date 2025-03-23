/*
 Library Management System
 Create a system to manage books in a library.
 Implement a Book class with properties like title, author, isbn, and isAvailable.
 Implement a Library class with methods:- addBook(Book book): Adds a book to the library.- borrowBook(String isbn): Marks a book as borrowed if available.- returnBook(String isbn): Marks a book as available again.- searchByTitle(String title): Returns books matching the title.
 Ensure that the system correctly updates the book's availability
 */




void main() {
  Library library = Library();

  library.addBook(Book('Dart Programming', 'John Doe', '1234'));
  library.addBook(Book('Flutter Development', 'Jane Smith', '5678'));
  library.addBook(Book('Dart Basics', 'Alice Brown', '91011'));

  library.searchByTitle('Dart');

  library.borrowBook('1234');

  library.borrowBook('1234');

  library.returnBook('1234');

  library.returnBook('5678');
}


class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, {this.isAvailable = true});

  @override
  String toString() {
    return 'Title: $title, Author: $author, ISBN: $isbn, Available: $isAvailable';
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Book added: ${book.title}');
  }

  void borrowBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn) {
        if (book.isAvailable) {
          book.isAvailable = false;
          print('Book borrowed: ${book.title}');
        } else {
          print('Book is already borrowed: ${book.title}');
        }
        return;
      }
    }
    print('Book not found!');
  }

  void returnBook(String isbn) {
    for (var book in books) {
      if (book.isbn == isbn) {
        if (!book.isAvailable) {
          book.isAvailable = true;
          print('Book returned: ${book.title}');
        } else {
          print('Book was not borrowed: ${book.title}');
        }
        return;
      }
    }
    print('Book not found!');
  }

  void searchByTitle(String title) {
    var foundBooks = books.where((book) => book.title.toLowerCase().contains(title.toLowerCase())).toList();
    if (foundBooks.isEmpty) {
      print('No books found with title: $title');
    } else {
      print('Books found:');
      for (var book in foundBooks) {
        print(book);
      }
    }
  }
}

