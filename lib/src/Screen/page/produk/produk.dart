
import 'package:auroralink/src/Screen/page/produk/listWidget/searchBar.dart';
import 'package:flutter/material.dart';
import 'listWidget/hardwareList.dart';
import 'listWidget/laptopList.dart';
import 'listWidget/pcList.dart';
import 'listWidget/softwareList.dart';

class Produk extends StatefulWidget {
  @override
  _ProdukState createState() => _ProdukState();
}

class _ProdukState extends State<Produk> with SingleTickerProviderStateMixin {
  TabController _produkController;

  @override
  void initState() {
    _produkController =
        new TabController(vsync: this, initialIndex: 0, length: 4);
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
            new Tab(text: "Software"),
            new Tab(text: "Hardware"),
            new Tab(text: "Paket PC"),
            new Tab(text: "Laptop Bekas"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _produkController,
        children: <Widget>[
          new Software(),
          new Hardware(),
          new PcRakitan(),
          new Laptop(),
        ],
      ),
      // drawer: Drawer(

      //   child: MyNavigationDrawer(),
      // ),
    );
  }
}
