import 'package:flutter/material.dart';

//INI CLASS LISTBAR//
class ListBar extends StatelessWidget {
  ListBar({this.teks, this.icon, this.ontap});
  final IconData icon;
  final String teks;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListTile(
        title: Text(teks),
        trailing: Icon(icon),
        onTap: ontap != null
            ? () => ontap()
            : () {
                print('Not set yet');
              },
      ),
    );
  }
}
