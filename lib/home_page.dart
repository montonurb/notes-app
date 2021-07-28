import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/body_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    setState(() {});
    super.initState();
  }

  var notes = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NOTES"),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () async {
                var description =
                    await Navigator.pushNamed(context, "/create-note");
                if (description != null) notes.add(description as String);
                setState(() {});
              }),
        ],
      ),
      body: BodyList(notes),
    );
  }
}
