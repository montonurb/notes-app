import 'package:flutter/material.dart';
import 'package:notes_app/create_note_page.dart';
import 'package:notes_app/home_page.dart';
import 'package:notes_app/login/widget/login_page.dart';
import 'package:notes_app/pages/error_page.dart';
import 'package:notes_app/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Notes",
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/create-note": (context) => CreateNotePage(),
        "/error": (context) => ErrorPage(),
      },
    );
  }
}
