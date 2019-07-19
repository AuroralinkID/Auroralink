import 'package:auroralink/src/Screen/page/produk/widget/includes/desktopList.dart';
import 'package:auroralink/src/Screen/page/produk/widget/includes/recomended.dart';
import 'package:flutter/material.dart';

class Desktop extends StatefulWidget {
  @override
  _DesktopState createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // DesktopList(),
        DesktopScroll(),
        Recomended()
      ],
    );
  }
}