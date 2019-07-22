import 'package:auroralink/src/Screen/page/produk/widget/includes/searchBar.dart';
import 'package:auroralink/src/Screen/property/IconPallete.dart';
import 'package:flutter/material.dart';
import 'jasaWebdev.dart' as web;
import 'jasaSysadmin.dart' as sys;
import 'jasaServis.dart' as ser;
import 'jasaITSupport.dart' as supp;

class Jasa extends StatefulWidget {
  @override
  _JasaState createState() => _JasaState();
}

class _JasaState extends State<Jasa> with TickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(
      vsync: this,
      length: 4,
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cari Jasa"),
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
        bottom: TabBar(
          controller: controller,
          labelColor: IconPallete.grey,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.desktop_windows),
              text: "Servis",
            ),
            new Tab(
              icon: new Icon(Icons.code),
              text: "WebDev",
            ),
            new Tab(
              icon: new Icon(Icons.laptop_mac),
              text: "SysAdm",
            ),
            new Tab(
              icon: new Icon(Icons.mouse),
              text: "Support",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          new ser.JasaServis(),
          new web.WebDev(),
          new sys.JasaSysadmin(),
          new supp.ITSupport(),
        ],
      ),
    );
  }
}
