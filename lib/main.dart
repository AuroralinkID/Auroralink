import 'package:flutter/material.dart';
import 'auth/login.dart';
import 'home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),


  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auroralink',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: HomePage(),
      routes: routes,
    );
  }
}