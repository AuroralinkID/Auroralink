import 'package:flutter/material.dart';

class WebDev extends StatefulWidget {
  @override
  _WebDevState createState() => _WebDevState();
}

class _WebDevState extends State<WebDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).canvasColor,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "WebDev",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      
    );
  }
}
