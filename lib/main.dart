import 'package:flutter/material.dart';
import 'package:myuipra/login_page.dart';
import 'package:myuipra/utils/routes.dart';

import 'mainpage.dart';
void main(){
  runApp(myuipra());

}

class myuipra extends StatefulWidget {
  const myuipra({Key? key}) : super(key: key);

  @override
  State<myuipra> createState() => _myuipraState();
}

class _myuipraState extends State<myuipra> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Fonts',
      routes: {
        "/": (context)=> LoginPage(),
        MyRoutes.LoginRoute:(context)=> LoginPage(),
        MyRoutes.MainRoute:(context)=> MainPage(),
      },
    );
  }
}
