import 'package:flutter/material.dart';
import 'package:notes_app/botao_salvar.dart';

// ignore: must_be_immutable
class CampoAnotacao extends StatefulWidget {
  var description = "";
  var textController = TextEditingController();
  var isEdit = false;

  CampoAnotacao(this.description, this.textController, this.isEdit);

  @override
  _CampoAnotacaoState createState() => _CampoAnotacaoState();
}

class _CampoAnotacaoState extends State<CampoAnotacao> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(
        controller: widget.textController,
        maxLines: null,
        onChanged: (value) {
          widget.description = value;
          setState(() {});
        },
        decoration: InputDecoration(labelText: "Descrição"),
      ),
      if (widget.description.isNotEmpty)
        BotaoSalvar(widget.isEdit, widget.description),
    ]);
  }
}
