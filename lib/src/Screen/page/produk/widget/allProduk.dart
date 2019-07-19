import 'package:auroralink/src/Screen/page/produk/widget/includes/customList.dart';
import 'package:auroralink/src/Screen/page/produk/widget/includes/desktopList.dart';
import 'package:auroralink/src/Screen/page/produk/widget/includes/mobileList.dart';
import 'package:auroralink/src/Screen/page/produk/widget/includes/recomended.dart';
import 'package:auroralink/src/Screen/page/produk/widget/includes/websiteList.dart';
import 'package:flutter/material.dart';

class AllProdukList extends StatefulWidget {
  @override
  _AllProdukListState createState() => _AllProdukListState();
}

class _AllProdukListState extends State<AllProdukList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Recomended(),
        new Recomended(),
        new Recomended(),
      ],
    );
  }
}
