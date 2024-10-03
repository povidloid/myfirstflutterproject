import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/main.dart';

import 'PasswordPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController login = TextEditingController();

  void navigateToNextPage() {
    UserInfo.object.login = login.text;

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PasswordPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Column(
                children: [
                  TextField(
                    controller: login,
                    decoration: const InputDecoration(labelText: "Login:"),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: navigateToNextPage, child: const Text("OK")),
                  )
                ],
              ),
            )));
  }
}
