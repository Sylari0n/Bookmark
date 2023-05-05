

import 'package:flutter/material.dart';

class BookNotes extends StatefulWidget {
  const BookNotes({super.key});

  @override
  State<BookNotes> createState() => _BookNotesState();
}

class _BookNotesState extends State<BookNotes> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Bookcover(),
          Bookcover(),
          Bookcover(),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Bookcover(),
          Bookcover(),
          Bookcover(),
        ],),
      ]),
    );
  }
}


// Prebuild Widgets

class Bookcover extends StatefulWidget
{
  const Bookcover({super.key});

  @override
  State<Bookcover> createState() => _Bookcover();
}

class _Bookcover extends State<Bookcover> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
      child: SizedBox(
        width: 100,
        height: 150,
        child: ElevatedButton(
          child: Text("Note"),
          onPressed: () {},
        ),
      ),
    );
  }
}
