import 'package:flutter/material.dart';

class AuroraBar extends AppBar {
  AuroraBar()
      : super(
            elevation: 0.25,
            backgroundColor: Colors.white,
            flexibleSpace: _buildAuroraAppBar());

  static Widget _buildAuroraAppBar() {
    return new Container(
        padding: EdgeInsets.all(10.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Image.asset("assets/img/logos.png", fit: BoxFit.fill,)
          ],
        ));
  }
}
