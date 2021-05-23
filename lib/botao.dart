import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BotaoSalvar extends StatelessWidget {
  var isEdit = false;
  var description = "";

  BotaoSalvar(this.isEdit, this.description);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
