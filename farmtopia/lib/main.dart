import 'package:flutter/material.dart';
//import 'package:farmtopia/pages/home.dart';
import 'package:farmtopia/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our app',
      theme: ThemeData(
        //primaryColor: Colors.red[300],
        primaryColor: Color(0xFFE683A9),
        brightness: Brightness.light,
      ),
      home: Login(),
      /* initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/login': (BuildContext context) => Login()
      }, */
      debugShowCheckedModeBanner: false,
    );
  }
}
