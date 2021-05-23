import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                },
              ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textController,
                maxLines: null,
                onChanged: (value) {
                  description = value;
                  setState(() {});
                },
                decoration: InputDecoration(labelText: "Descrição"),
              ),
              SizedBox(
                height: 32,
              ),
              if (description.isNotEmpty)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, description);
                        },
                        child: Text(isEdit ? "Salvar" : "Criar"),
                      ),
                    ),
                  ],
                )
            ],
          ),
        ));
  }
}
