import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BotaoFloatting extends StatefulWidget {
  var notes = <String>[];

  BotaoFloatting(this.notes);

  @override
  _BotaoFloattingState createState() => _BotaoFloattingState();
}

class _BotaoFloattingState extends State<BotaoFloatting> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () async {
        var description = await Navigator.pushNamed(context, "/create-note");
        if (description != null) widget.notes.add(description as String);
        setState(() {});
      },
    );
  }
}
