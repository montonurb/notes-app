import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateNotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CRIAR / EDITAR"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {},
          )
        ],
      ),
      body: TextField(
        maxLines: null,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
