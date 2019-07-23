
import 'package:flutter/material.dart';
import 'listWidget/recomended.dart';

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
