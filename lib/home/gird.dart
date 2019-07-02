import 'package:auroralink/jasa/jasa.dart';
import 'package:auroralink/produk/produk.dart';
import 'package:auroralink/project/project.dart';
import 'package:auroralink/servis/index.dart';
import 'package:auroralink/support/support.dart';
import 'package:auroralink/ticket/ticket.dart';
import 'package:flutter/material.dart';
import 'package:auroralink/home/card.dart';


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
  BuildTile({this.ikon, this.judul, this.ontap});
  final IconData ikon;
  final String judul;
  final Function() ontap;

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
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Material(
                    color: Colors.lightBlue,
                    shape: CircleBorder(),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
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
