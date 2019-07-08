import 'package:flutter/material.dart';

class Portofolio extends StatefulWidget {
  @override
  _PortofolioState createState() => _PortofolioState();
}

class _PortofolioState extends State<Portofolio> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("ini halaman Portofolio")
          ],
        ),
      ),
    );
  }
}