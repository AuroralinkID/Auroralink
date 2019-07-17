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

//INI JUGA CLASS BUILDTILE//
class BuildTile extends StatelessWidget {
  BuildTile({this.ikon, this.judul, this.ontap, this.warna});
  final IconData ikon;
  final String judul;
  final Function() ontap;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 1,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 7.0),
        children: <Widget>[
          _buildTile(
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Material(
                    color: warna,
                    shape: CircleBorder(),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(ikon, color: Colors.white, size: 20.0),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 5.0)),
                  Text(judul,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0)),
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
      ),
    );
  }
}
