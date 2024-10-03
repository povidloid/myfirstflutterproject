import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/pages/EnteredInfoPage.dart';
import 'package:myfirstflutterproject/pages/LoginPage.dart';

import '../main.dart';

class PasswordPage extends StatefulWidget {
  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  TextEditingController password = TextEditingController();

  void navigateToNextPage() {
    UserInfo.object.password = password.text;

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EnteredInfoPage()));
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
                    controller: password,
                    decoration: const InputDecoration(labelText: "Password:"),
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
