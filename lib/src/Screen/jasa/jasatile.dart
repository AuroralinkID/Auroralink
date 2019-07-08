import 'package:flutter/material.dart';

Widget _buildTile(Widget child, {Function() onTap}) {
  return Material(
      elevation: 14.0,
      borderRadius: BorderRadius.circular(12.0),
      shadowColor: Color(0x802196F3),
      child: InkWell(
          // Do onTap() if it isn't null, otherwise do print()
          onTap: onTap != null
              ? () => onTap()
              : () {
                  print('Not set yet');
                },
          child: child));
}

class JasaTile extends StatelessWidget {
  JasaTile({this.ikon, this.judul, this.ontap});
  final IconData ikon;
  final String judul;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new GridView.count(
        crossAxisCount: 1, // I only need two card horizontally
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          _buildTile(
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Material(
                    color: Colors.white,
                    shape: CircleBorder(),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(ikon, color: Colors.lightBlue, size: 50.0),
                    ),
                  ),
                  Text(judul,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0)),
                ],
              ),
            ),
            onTap: ontap != null
                ? () => ontap()
                : () {
                    print('Not set yet');
                  },
          ),
        ],
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 4.0, // add some space
      ),
    );
  }
}
