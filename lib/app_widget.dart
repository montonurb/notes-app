import 'package:flutter/material.dart';
import 'package:notes_app/create_note_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Notes",
      home: CreateNotePage(),
    );
  }
}
