import 'package:auroralink/src/Screen/page/produk/widget/includes/customList.dart';
import 'package:auroralink/src/Screen/page/produk/widget/includes/recomended.dart';
import 'package:flutter/material.dart';

class Custom extends StatefulWidget {
  @override
  _CustomState createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // CustomList(),
        CustomScroll(),
        Recomended(),
      ],
    );
  }
}
