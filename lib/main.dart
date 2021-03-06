import 'package:auroralink/launcher.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auroralink',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: new Launcher(),
      routes: routes,
    );
  }
}
