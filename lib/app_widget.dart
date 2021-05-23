import 'package:flutter/material.dart';
import 'package:notes_app/create_note_page.dart';
//import 'package:notes_app/create_note_page.dart';
import 'package:notes_app/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Notes",
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "/create-note": (context) => CreateNotePage(),
      },
    );
  }
}
