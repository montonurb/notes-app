import 'package:flutter/material.dart';
import 'package:notes_app/theme/app_theme.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Erro"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.construction, size: 50),
              Text("Página não encontrada!", style: AppTheme.textStyles.title),
            ],
          ),
        ),
      ),
    );
  }
}
