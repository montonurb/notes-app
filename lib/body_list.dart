import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BodyList extends StatefulWidget {
  var notes = <String>[];
  BodyList(this.notes);
  @override
  _BodyListState createState() => _BodyListState();
}

class _BodyListState extends State<BodyList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (var i = 0; i < widget.notes.length; i++)
            Card(
              child: ListTile(
                title: Text(widget.notes[i]),
                onTap: () async {
                  var response = await Navigator.pushNamed(
                      context, '/create-note',
                      arguments: widget.notes[i]);
                  if (response != null) {
                    var description = response as String;
                    if (response.isEmpty) {
                      widget.notes.removeAt(i);
                    } else {
                      widget.notes[i] = description;
                    }
                    setState(() {});
                  }
                },
              ),
            ),
        ],
      ),
    );
  }
}
