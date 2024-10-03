import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/pages/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class UserInfo{
  UserInfo(this.id, this.login, this.password);
  UserInfo._privateConstructor();

  static final UserInfo object = UserInfo._privateConstructor();

  int? id;
  String? login;
  String? password;

  @override
  String toString(){
    return 'UserInfo(login: $login, password: $password';
  }
}
class UserInfoList{
  UserInfoList._privateConstructor();

  static final UserInfoList object = UserInfoList._privateConstructor();

  List <UserInfo> userInfoList = [];
}