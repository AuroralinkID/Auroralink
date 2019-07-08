import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Row(
          children: <Widget>[
            Text("ini halaman Status")
          ],
        ),
      ),
    );
}
}