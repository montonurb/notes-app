import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/body_list.dart';
import 'package:notes_app/botao_floating.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notes = <String>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NOTES"),
        centerTitle: true,
      ),
      body: BodyList(notes),
      floatingActionButton: BotaoFloatting(notes),
    );
  }
}
