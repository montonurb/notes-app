import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/campo_anotacao.dart';

class CreateNotePage extends StatefulWidget {
  @override
  _CreateNotePageState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  var description = "";
  var textController = TextEditingController();
  var isEdit = false;

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (ModalRoute.of(context)!.settings.arguments != null) {
        description = ModalRoute.of(context)!.settings.arguments as String;
        textController.text = description;
        isEdit = true;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? "EDITAR NOTA" : "CRIAR NOTA"),
        centerTitle: true,
        actions: [
          if (isEdit)
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                Navigator.pop(context, "");
                setState(() {});
              },
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: CampoAnotacao(description, textController, isEdit),
      ),
    );
  }
}
