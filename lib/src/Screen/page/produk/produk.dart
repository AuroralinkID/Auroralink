import 'package:auroralink/src/Screen/page/produk/widget/allProduk.dart';
import 'package:auroralink/src/Screen/page/produk/widget/custom.dart';
import 'package:auroralink/src/Screen/page/produk/widget/desktop.dart';
import 'package:auroralink/src/Screen/page/produk/widget/includes/searchBar.dart';
import 'package:auroralink/src/Screen/page/produk/widget/mobile.dart';
import 'package:auroralink/src/Screen/page/produk/widget/website.dart';
import 'package:flutter/material.dart';

class Produk extends StatefulWidget {
  @override
  _ProdukState createState() => _ProdukState();
}

class _ProdukState extends State<Produk> with SingleTickerProviderStateMixin {
  TabController _produkController;

  @override
  void initState() {
    _produkController =
        new TabController(vsync: this, initialIndex: 0, length: 5);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cari Produk"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: SearchBar());
            },
          ),
          Icon(Icons.keyboard_voice),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
          ),
        ],
        bottom: new TabBar(
          controller: _produkController,
          indicatorColor: Colors.white,
          isScrollable: true,
          tabs: <Widget>[
            new Tab(text: "All"),
            new Tab(text: "Website"),
            new Tab(text: "Desktop"),
            new Tab(text: "Mobile"),
            new Tab(text: "Custom"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _produkController,
        children: <Widget>[
          new AllProdukList(),
          new Website(),
          new Desktop(),
          new Mobile(),
          new Custom(),
        ],
      ),
      // drawer: Drawer(

      //   child: MyNavigationDrawer(),
      // ),
    );
  }
}
