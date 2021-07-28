import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initilizeFirebase() async {
    try {
      await Firebase.initializeApp();
      await Future.delayed(Duration(seconds: 3));
      Navigator.pushNamed(context, "/login");
    } catch (e) {
      Navigator.pushNamed(context, "/error");
    }
  }

  @override
  void initState() {
    initilizeFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                  text: "Notes",
                  style: TextStyle(fontSize: 50),
                  children: [
                    TextSpan(text: "App", style: TextStyle(fontSize: 20)),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
