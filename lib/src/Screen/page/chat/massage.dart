import 'package:flutter/material.dart';

const String _name = "Anonymous";

class ChatMessage extends StatelessWidget {
  final String text;
  ChatMessage({this.text});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("ini halaman Chat")
          ],
        ),
      ),
    );
  }
}
