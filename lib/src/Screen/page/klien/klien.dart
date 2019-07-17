import 'package:flutter/material.dart';

class Klien extends StatefulWidget {
  @override
  _KlienState createState() => _KlienState();
}

class _KlienState extends State<Klien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ini halaman klien"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("Ini Halaman Klien")],
        ),
      ),
    );
  }
}
