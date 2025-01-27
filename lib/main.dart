import 'package:flutter/material.dart';
import 'book_widgets.dart';

void main() {
  runApp(const BookstoreApp());
}

class BookstoreApp extends StatelessWidget {
  const BookstoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ceylon Bookstore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BookstoreHomePage(),
    );
  }
}

class BookstoreHomePage extends StatelessWidget {
  const BookstoreHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final books = [
      {
        "title": "American Ghoul",
        "author": "Walt Morton",
        "price": "LKR 1000.00",
        "image": "assets/American-Ghoul.jpg"
      },
      {
        "title": "Death of the Immortal King",
        "author": "John Smith",
        "price": "LKR 1500.00",
        "image": "assets/Death-of-the-Immortal-King.jpg"
      },
      {
        "title": "Harry Potter",
        "author": "J.K. Rowling",
        "price": "LKR 1600.00",
        "image": "assets/HarryPotter.jpg"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(' The Novel Store'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookWidget(
            title: books[index]['title']!,
            author: books[index]['author']!,
            price: books[index]['price']!,
            imageUrl: books[index]['image']!,
          );
        },
      ),
    );
  }
}
