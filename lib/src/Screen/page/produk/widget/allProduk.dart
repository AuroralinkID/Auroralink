import 'package:auroralink/src/Screen/page/produk/widget/includes/recomended.dart';
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
        Recomended(),
      ],
    );
  }
}
