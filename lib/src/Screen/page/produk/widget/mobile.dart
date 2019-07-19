import 'package:auroralink/src/Screen/page/produk/widget/includes/mobileList.dart';
import 'package:auroralink/src/Screen/page/produk/widget/includes/recomended.dart';
import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // MobileList(),
        MobileScroll(),
        Recomended()
      ],
    );
  }
}
