import 'package:flutter/material.dart';
import 'package:notes_app/login/widget/login_controller.dart';
import 'package:notes_app/login/widget/login_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController(onUpdate: () {
      if (controller.state is LoginStateSuccess) {
        Navigator.pushReplacementNamed(context, "/home");
      } else {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 250.0),
              child: Column(
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
            Column(
              children: [
                Text("Faça login com uma das contas abaixo"),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (controller.state is LoginStateLoading) ...[
                      CircularProgressIndicator(),
                    ] else if (controller.state is LoginStateFailure) ...[
                      Text((controller.state as LoginStateFailure).message),
                    ] else
                      GestureDetector(
                        onTap: () {
                          controller.googleSignIn();
                        },
                        child: Container(
                          height: 35,
                          child: Image.asset("assets/images/google.png"),
                        ),
                      ),
                    SizedBox(width: 75),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/home");
                      },
                      child: Container(
                        height: 35,
                        child: Image.asset("assets/images/apple.png"),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
