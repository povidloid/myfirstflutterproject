import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/pages/LoginPage.dart';

class CatPage extends StatelessWidget{
  void navigateToNextPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network("https://i.pinimg.com/736x/57/b1/39/57b13984cd16e06cd684bc8ee4091c76.jpg"),
        SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => navigateToNextPage(context),
            child: Text("Return"),
          ),
        ),
      ],
    );
  }
}