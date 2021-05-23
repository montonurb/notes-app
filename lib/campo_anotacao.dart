import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CampoAnotacao extends StatefulWidget {
  var description = "";
  var textController = TextEditingController();

  CampoAnotacao(this.description, this.textController);

  @override
  _CampoAnotacaoState createState() => _CampoAnotacaoState();
}

class _CampoAnotacaoState extends State<CampoAnotacao> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textController,
      maxLines: null,
      onChanged: (value) {
        widget.description = value;
        setState(() {});
      },
      decoration: InputDecoration(labelText: "Descrição"),
    );
  }
}
