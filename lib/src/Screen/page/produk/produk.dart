import 'package:auroralink/src/Screen/page/produk/allProduk.dart';
import 'package:auroralink/src/Screen/page/produk/searchBar.dart';
import 'package:auroralink/src/Screen/property/IconPallete.dart';
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
          indicatorColor: IconPallete.menuRide,
          isScrollable: true,
          tabs: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Icon(Icons.list, size: 30, color: Colors.white,),
                  Text("Semua Produk", style: TextStyle(color: Colors.white),)
                ],
              ),),
            Container(
              child: Column(
                children: <Widget>[
                  Icon(Icons.code, size: 30, color: Colors.white,),
                  Text("Software", style: TextStyle(color: Colors.white),)
                ],
              ),),
              Container(
              child: Column(
                children: <Widget>[
                  Icon(Icons.memory, size: 30, color: Colors.white,),
                  Text("Hardware", style: TextStyle(color: Colors.white),)
                ],
              ),),
              Container(
              child: Column(
                children: <Widget>[
                  Icon(Icons.desktop_windows, size: 30, color: Colors.white),
                  Text("Desktop / PC", style: TextStyle(color: Colors.white),)
                ],
              ),),
              Container(
              child: Column(
                children: <Widget>[
                  Icon(Icons.laptop, size: 30, color: Colors.white),
                  Text("Laptop", style: TextStyle(color: Colors.white),)
                ],
              ),),
            ],
        ),
      ),
      body: TabBarView(
        controller: _produkController,
        children: <Widget>[
          new AllProdukList(),
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
