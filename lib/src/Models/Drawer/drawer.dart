import 'package:flutter/material.dart';



//INI CLASS LISTBAR//
class ListBar extends StatelessWidget {
  ListBar({this.teks, this.icon});
  final IconData icon;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListTile(
        title: Text(teks),
        trailing: Icon(icon),
      ),
    );
  }
}
