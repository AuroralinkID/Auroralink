import 'package:flutter/material.dart';
import 'package:auroralink/produk/specification.dart';
import 'package:auroralink/produk/productDesc.dart';
import 'package:auroralink/produk/userReviews.dart';

class JudulProduk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, top: 25.0, bottom: 12.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Text("Judul Produk", style: TextStyle(fontSize: 20.0),)
            ],
          ),
          new Row(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Icon(
                  Icons.picture_as_pdf,
                  color: Colors.lightBlue,
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Icon(
                  Icons.share,
                  color: Colors.green,
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Icon(
                  Icons.shopping_cart,
                  color: Colors.amber,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

var divider = new Divider();

class Mfooter extends StatefulWidget {
  Mfooter({@required this.detProd});
  final ProductDesc detProd;
  
  @override
  _MfooterState createState() => new _MfooterState();
}

class _MfooterState extends State<Mfooter> with SingleTickerProviderStateMixin {
  List<Tab> _tabs;
  List<Widget> _pages;
  static TabController _controller;
  @override
  void initState() {
    super.initState();

    _tabs = [
      new Tab(
        child: new Text(
          "Deskripsi Produk",
          style: new TextStyle(color: Colors.black),
        ),
      ),
      new Tab(
        child: new Text(
          "Fitur",
          style: new TextStyle(color: Colors.black),
        ),
      ),
      new Tab(
        child: new Text(
          "Review",
          style: new TextStyle(color: Colors.black),
        ),
      ),
    ];
    _pages = [new ProductDesc(detProd: null,), new Specification(), new UserReview()];
    _controller = new TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new TabBar(
          isScrollable: true,
          controller: _controller,
          tabs: _tabs,
          indicatorColor: Colors.white,
        ),
        new Divider(
          height: 1.0,
        ),
        new SizedBox.fromSize(
          size: const Size.fromHeight(220.0),
          child: new TabBarView(
            controller: _controller,
            children: _pages,
          ),
        ),
      ],
    );
  }
}
