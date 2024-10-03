import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/main.dart';

import 'CatPage.dart';

class UserInfoBasePage extends StatelessWidget {
  void navigateToNextPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => CatPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(child: UserInfoBase()),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => navigateToNextPage(context),
                child: Text("To easter egg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserInfoBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: UserInfoList.object.userInfoList.length,
      itemBuilder: (context, index) {
        final user = UserInfoList.object.userInfoList[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${user.id}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Login: ${user.login}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Password: ${user.password}', style: TextStyle(fontSize: 18)),
            Divider(),
          ],
        );
      },
    );
  }
}
