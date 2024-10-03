import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/main.dart';

import 'UserInfoBasePage.dart';

class EnteredInfoPage extends StatelessWidget {
  void navigateToNextPage(BuildContext context) {
    UserInfoList.object.userInfoList.add(
      UserInfo(
        UserInfoList.object.userInfoList.length,
        UserInfo.object.login,
        UserInfo.object.password
      )
    );

    UserInfoList.object.userInfoList.forEach((user) {
      print(user);
    });

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => UserInfoBasePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Entered login: ${UserInfo.object.login.toString()}",
                style: TextStyle(fontSize: 16)),
            Text("Entered password: ${UserInfo.object.password.toString()}",
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            SizedBox(width: double.infinity, child:
            ElevatedButton(onPressed: () => navigateToNextPage(context), child: Text("Confirm"))
              ,)
          ],
        )
        ,
      )
      ,
    );
  }
}