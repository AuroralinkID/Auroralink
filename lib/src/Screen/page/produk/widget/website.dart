import 'package:auroralink/src/Screen/page/produk/widget/includes/recomended.dart';
import 'package:auroralink/src/Screen/page/produk/widget/includes/websiteList.dart';
import 'package:flutter/material.dart';

class Website extends StatefulWidget {
  @override
  _WebsiteState createState() => _WebsiteState();
}

class _WebsiteState extends State<Website> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // WebsiteList(),
        WebScroll(),
        Recomended()
      ],
    );
  }
}
