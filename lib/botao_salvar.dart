import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BotaoSalvar extends StatefulWidget {
  var isEdit = false;
  var description = "";

  BotaoSalvar(this.isEdit, this.description);

  @override
  _BotaoSalvarState createState() => _BotaoSalvarState();
}

class _BotaoSalvarState extends State<BotaoSalvar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context, widget.description);
              setState(() {});
            },
            child: Text(widget.isEdit ? "Salvar" : "Criar"),
          ),
        ),
      ],
    );
  }
}
