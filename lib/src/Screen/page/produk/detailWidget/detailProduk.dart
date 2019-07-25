import 'package:auroralink/src/Screen/page/produk/detailWidget/body.dart';
import 'package:auroralink/src/Screen/page/produk/detailWidget/footer.dart';
import 'package:auroralink/src/Screen/page/produk/detailWidget/header.dart';
import 'package:auroralink/src/Screen/property/IconPallete.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String nama;
  final String gambar;
  DetailPage({Key key, @required this.nama, this.gambar}) : super(key: key);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
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
    _pages = [new ProductDesc(), new Specification(), new UserReview()];
    _controller = new TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
    new Container(
        padding: EdgeInsets.all(5.0),
        child: new Card(
          child: Column(
            children: <Widget>[
              Image.network(
                "${widget.gambar}",
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Text(
                          "${widget.nama}",
                          style: TextStyle(fontSize: 15.0),
                        )
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
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
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
                ),
              )
            ],
          ),
        )));
  }
  }
  class UserReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text("Ini Parameter Deskripsi"),
      ),
    );
  }
}
class Specification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text("Ini Parameter Fitur"),
      ),
    );
  }
}

class ProductDesc extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text("Ini Parameter Deskripsi Produk",
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400)),
        ),
    );
  }
}