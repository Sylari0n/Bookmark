import 'package:flutter/material.dart';
import 'package:bookmark/screens/booknotes.dart';

void main() {
  runApp(BookmarkApp());
}

class BookmarkApp extends StatelessWidget {
  const BookmarkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookNotes(),
    );
  }
}




